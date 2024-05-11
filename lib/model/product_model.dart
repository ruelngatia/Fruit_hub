
class ProductModel{
  String name;
  int price;
  String ingredients;
  String remark;

  ProductModel({
    required this.name,
    required this.price,
    required this.ingredients,
    required this.remark
  });

  factory ProductModel.fromDocument(Map<String,dynamic> doc){
    return ProductModel(
      name: doc['name'], 
      price: doc['price'], 
      ingredients: doc['ingredients'], 
      remark: doc['remark']
    );
  }

  Map<String,dynamic> toMap(){
    return {
      'name' : name,
      'price' : price,
      'ingredients' : ingredients,
      'remark' : remark
    };
  }

}