import 'package:fruit_hub/model/order_card_model.dart';
import 'package:fruit_hub/service/order_service.dart';
import 'package:get/get.dart';

class OrderController extends GetxController{
  
  List<OrderCardModel> orderList = [];

  OrderController(){
    getProducts();
  }


  Future<void> getProducts () async{
    var orders = await OrderService().getOrders();
    if(orders == null) return;
    for (var element in orders.products) {
      orderList.add(OrderCardModel(
        productId: element.productId, 
        productName: element.productName, 
        count: element.count, 
        pricePerUnit: element.pricePerUnit)
      );
    }}

  reduceCount(productId){
    // orderList.firstWhere((element) => element.productId == productId).count
  }

}