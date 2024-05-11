import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:fruit_hub/model/card_model.dart';
import 'package:fruit_hub/model/likes_model.dart';
import 'package:fruit_hub/model/product_model.dart';
import 'package:fruit_hub/service/auth_service.dart';
import 'package:fruit_hub/utils/local_storage.dart';

class ProductsService {
  
  final db = FirebaseFirestore.instance;

  Future<List<CardModel>> getProducts() async{
     try{
      var userRef = await AuthService().findUserRef(await LocalStorage().read('username') ?? '');
      var productRef = await db.collection('Products').get();
      List<CardModel> products = [];
      for (var element in productRef.docs) {
        var product = ProductModel.fromDocument(element.data());
        var likesRef = await db.collection('Likes').where('product_id', isEqualTo: element.reference).where('user_id',isEqualTo: userRef).get();
        bool isLiked = likesRef.size > 0 ? LikesModel.fromDocument(likesRef.docs.first.data()).liked: false;
        products.add(CardModel(productId: element.reference, name: product.name, amount: product.price, like: isLiked));

       }
        return products;
    }on Exception catch(e){
      if(kDebugMode){
        print(e);
      } 
      rethrow;
    }
  }

  Future<void> setLike(DocumentReference productRef, bool like ) async{
    var userRef = await AuthService().findUserRef(await LocalStorage().read('username') ?? '');
    await db.collection('Likes').doc().set(LikesModel(
      productId: productRef, 
      timestamp: DateTime.timestamp(), 
      userId: userRef!,
      liked: like).toMap(),SetOptions(merge: true));

  }

}