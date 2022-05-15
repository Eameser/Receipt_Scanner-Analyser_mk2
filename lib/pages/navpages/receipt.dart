import 'package:flutter/cupertino.dart';

class Item {
  String? name;
  num? totalCost;
  num? unitCost;
  int? quantity;

  Item(this.name, this.totalCost, this.unitCost, this.quantity);
  //static List<Item> items = [];
}

class ReceiptInfo {
  String? dateTime;
  List? items;
  num? finalTotal;
  num? finalTax;

  ReceiptInfo(this.dateTime, this.items, this.finalTotal, this.finalTax);
  static List<ReceiptInfo> recInfo = [];
}

class AnalyticsInfo with ChangeNotifier{
  double? total;
  double? maxPrice;

  double? get getTotal => total;
 // int? maxAmount;

  //AnalyticsInfo(this.total, this.maxPrice);
  //static List<AnalyticsInfo> aInfo = [];

void changeTotal(double? newTotal){
  total = total! + newTotal!;

  notifyListeners();
}
}