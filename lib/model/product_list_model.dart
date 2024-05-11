class ProductListModel{
  int count;
  String productId;

  ProductListModel({
    required this.count,
    required this.productId
  });

  factory ProductListModel.fromDocument(Map<String,dynamic> doc){
    return ProductListModel
    (
      count: doc['count'], 
      productId: doc['product']
    );
  }

  Map<String,dynamic>toMap(){
    return {
      'count' : count,
      'product' : productId
    };
  }

}