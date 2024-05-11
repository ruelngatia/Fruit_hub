class DeliveryAddressModel{
  String address;
  String phone;

  DeliveryAddressModel({
    required this.address,
    required this.phone
  });

  factory DeliveryAddressModel.fromDocument(Map<String,dynamic> doc){
    return DeliveryAddressModel(
      address: doc['address'], 
      phone: doc['phone']
    );
  }

  Map<String,dynamic> toMap(){
    return {
      'address': address,
      'phone': phone
    };
  }

}