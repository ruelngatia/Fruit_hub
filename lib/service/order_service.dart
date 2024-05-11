import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruit_hub/model/order_model.dart';
import 'package:fruit_hub/service/auth_service.dart';
import 'package:fruit_hub/utils/local_storage.dart';

class OrderService{
  final db = FirebaseFirestore.instance;

  Future<OrderModel?> getOrders() async{
    var userRef = await AuthService().findUserRef(await LocalStorage().read('username') ?? '');
    var ordersRef = await db.collection('Orders').where('Users',isEqualTo: userRef).where('delivered', isEqualTo: false).get();
    return ordersRef.size > 0 ? OrderModel.fromDocument(ordersRef.docs.first.data()): null;
  }

}