class CardDetailsModel{

  String cardHolderName;
  int cardNumber;
  int cvv;
  String exp;

  CardDetailsModel({
    required this.cardHolderName,
    required this.cardNumber,
    required this.cvv,
    required this.exp
  });

  factory CardDetailsModel.fromDocument(Map<String,dynamic> json){
    return CardDetailsModel(
      cardHolderName: json['cardHolderName'], 
      cardNumber: json['cardNumber'], 
      cvv: json['cvv'], 
      exp: json['exp']
    );
  }

  Map<String,dynamic> toMap(){
    return {
      'cardHolderName': cardHolderName, 
      'cardNumber': cardNumber, 
      'cvv': cvv, 
      'exp': exp
    };
  }

}