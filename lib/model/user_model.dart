import 'package:fruit_hub/model/card_details_model.dart';

class UserModel{
  String username;
  CardDetailsModel? cardDetails;
  
  UserModel({
    required this.username,
    this.cardDetails
    });

  factory UserModel.fromDocument(Map<String,dynamic> json){
    return UserModel(
      username: json['Username'], 
      cardDetails: CardDetailsModel.fromDocument(json['cardDetails'])
    );
  }

  Map<String,dynamic> toMap(){
    return {
      'Username': username,
      'cardDetails': cardDetails?.toMap()
    };
  }

}