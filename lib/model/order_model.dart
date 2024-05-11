import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruit_hub/model/delivery_address_model.dart';

class OrderModel{

  DocumentReference userId;
  DeliveryAddressModel deliveryAddress;
  Timestamp orderDate;
  List<ProductsModel> products;

  OrderModel({
    required this.userId,
    required this.deliveryAddress,
    required this.orderDate,
    required this.products,
  });

  factory OrderModel.fromDocument(Map<String,dynamic> doc){
    List<ProductsModel> products = [];
    doc['products'].forEach((element) {
      products.add(ProductsModel.fromDocument(element));
    });
    return OrderModel(
      userId: doc['user'], 
      deliveryAddress: DeliveryAddressModel.fromDocument(doc['deliveryAddress']),
      orderDate: doc['order_date'],
      products: products
    );
  }

  Map<String,dynamic> toMap(){
    return {
      'user': userId,
      'deliveryAddress': deliveryAddress.toMap()
    };
  }

}

class ProductsModel {
  DocumentReference productId;
  int count;
  double pricePerUnit;
  String productName;

  ProductsModel({
    required this.productId,
    required this.count,
    required this.pricePerUnit,
    required this.productName
  });

  factory ProductsModel.fromDocument(Map<String,dynamic> doc){
    return ProductsModel(
      productId: doc['product'], 
      count: doc['count'], 
      pricePerUnit: doc['doc_per_unit'],
      productName: doc['product_name']
    );
  }

  Map<String,dynamic> toMap(){
    return{
      'product' : productId,
      'count' : count,
      'doc_per_unit' : pricePerUnit,
      'product_name': productName
    };
  }

}