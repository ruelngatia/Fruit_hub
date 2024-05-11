import 'package:cloud_firestore/cloud_firestore.dart';

class CardModel{

  DocumentReference productId;
  String name;
  int amount;
  bool like;

  CardModel({
    required this.productId,
    required this.name,
    required this.amount,
    required this.like,
  });

}