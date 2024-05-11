import 'package:cloud_firestore/cloud_firestore.dart';

class LikesModel{
  DocumentReference productId;
  DateTime timestamp;
  DocumentReference userId;
  bool liked;

  LikesModel({
    required this.productId,
    required this.timestamp,
    required this.userId,
    required this.liked
  });

  factory LikesModel.fromDocument(Map<String,dynamic> doc){
    return LikesModel(
      productId: doc['product_id'], 
      timestamp: doc['timestamp'], 
      userId: doc['user_id'],
      liked: doc['liked']
    );
  }

  Map<String,dynamic> toMap(){
    return{
      'product_id' : productId,
      'timestamp' : timestamp,
      'user_id' : userId,
      'liked': liked
    };
  }

}