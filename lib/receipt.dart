import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;

  bool get isLightMode => themeMode == ThemeMode.light;

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.light : ThemeMode.dark;
    notifyListeners();
  }
}

class MyThemes {
  static final darkTheme = ThemeData(
    backgroundColor: Colors.blueGrey.shade700,
    //primaryColor: Colors.cyan.shade900,
    primaryColor: Colors.blueGrey.shade300,
    bottomAppBarColor: Colors.blueGrey.shade300,
    buttonColor: Colors.black,
    accentColor: Colors.blueGrey.shade300,
    iconTheme: IconThemeData(color: Colors.white,),
    cardColor: Colors.black,
    //colorScheme: ColorScheme.dark(),
  );

  static final coloredTheme = ThemeData(
    backgroundColor: Colors.indigo.shade50,
    primaryColor: Colors.lime.shade200,
    bottomAppBarColor: Colors.indigo.shade100,
    buttonColor: Colors.lime.shade200,
    accentColor: Colors.indigo.shade100,
    iconTheme: IconThemeData(color: Colors.black),
    cardColor: Colors.white,
    //colorScheme: ColorScheme.dark(),
  );
}

class LanguageChangeProvider with ChangeNotifier {
  Locale _currentLocale = new Locale("en");

  Locale get currentLocale => _currentLocale;

  void changeLocale(String _locale){
    this._currentLocale = new Locale(_locale);
    notifyListeners();
  }
}

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
  int? dateID;
  List? items;
  num? finalTotal;
  num? finalTax;

  ReceiptInfo(this.dateTime, this.dateID, this.items, this.finalTotal, this.finalTax);
  static List<ReceiptInfo> recInfo = [];
}

class AnalyticsInfo extends ChangeNotifier{
  double? total;
  int? totalCount;
  double? maxPrice;
  String? maxPriceName;
  String? favItem;
  //int? maxAmount;


void changeTotal(double? newTotal){
  total = newTotal!;
  notifyListeners();
}

void changeTotalCount(int? newTotalCount){
  totalCount = newTotalCount!;
  notifyListeners();
}

void changeMaxPrice(double? newMaxPrice){
  maxPrice = newMaxPrice!;
  notifyListeners();
}

void changeMaxPriceName(String? newMaxPriceName){
  maxPriceName = newMaxPriceName!;
  notifyListeners();
}

void changeFavItem(String? newFavItem){
  favItem = newFavItem!;
  notifyListeners();
}

}