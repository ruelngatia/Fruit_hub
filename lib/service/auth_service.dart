import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:fruit_hub/model/user_model.dart';

class AuthService{

  final db = FirebaseFirestore.instance;

  void createUser(UserModel user){
    db.collection('Users').doc().set(user.toMap())
    .onError((error, stackTrace){
      if(kDebugMode){
        print(error);
      }
    });
  }

  Future<UserModel?> findUser( String username) async{
    try{
      var userRef = await db.collection('Users').where('Username',isEqualTo: username).get();
        if(userRef.docs.isNotEmpty){
          return UserModel.fromDocument(userRef.docs[0].data());
        }
        return null;
    }on Exception catch(e){
      if(kDebugMode){
        print(e);
      }
      return null;
    }
  }

    Future<DocumentReference?> findUserRef( String username) async{
    try{
      var userRef = await db.collection('Users').where('Username',isEqualTo: username).get();
        if(userRef.docs.isNotEmpty){
          return userRef.docs[0].reference;
        }
        return null;
    }on Exception catch(e){
      if(kDebugMode){
        print(e);
      }
      return null;
    }
  }


}