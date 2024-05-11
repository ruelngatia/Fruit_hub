import 'package:cloud_firestore/cloud_firestore.dart';

class OrderCardModel{

  DocumentReference productId;
  String productName;
  int count;
  double pricePerUnit;

  OrderCardModel({
    required this.productId,
    required this.productName,
    required this.count,
    required this.pricePerUnit
  });


}