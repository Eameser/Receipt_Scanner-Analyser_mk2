import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:nomldemo/receipt.dart';
import 'package:provider/provider.dart';
import '../../generated/l10n.dart';
import 'analytics_page.dart';
import '../../receipt.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ReceiptsLibraryPage extends StatefulWidget {


  @override
  _ReceiptsLibraryPageState createState() => _ReceiptsLibraryPageState();
}

class _ReceiptsLibraryPageState extends State<ReceiptsLibraryPage> {
  //final DateTime _cD = DateTime.now();
  //List<Widget> myPages = [PageOne(), PageTwo(), PageThree(), PageFour()];

  bool _hasBeenPressed1 = false;
  bool _hasBeenPressed2 = false;
  bool _hasBeenPressed3 = false;
  bool _hasBeenPressed4 = false;
  bool _hasBeenPressed5 = false;
  bool _hasBeenPressed6 = false;
  bool _hasBeenPressed7 = false;
  bool _hasBeenPressed8 = false;
  bool _hasBeenPressed9 = false;
  bool _hasBeenPressed10 = false;
  bool _hasBeenPressed11 = false;
  bool _hasBeenPressed12 = false;




  PageController _pageController = PageController(
    initialPage: 0, // какую страницу открывает первой
  );




  double? aTotal = 0;

  double? aFinalTotal = 0;
  int? aTotalCount = 0;
  double? aMaxUnitCost = 0;
  String? aMostExpensiveItem = '';
  String? aFavouriteProduct = '';


  @override
  Widget build(BuildContext context) => Scaffold(
        //AnalyticsInfo analyticsInfo = Provider.of<AnalyticsInfo>(context);
        appBar: AppBar(
          actions: [
            IconButton(
              color: Theme.of(context).cardColor,
              onPressed: () {
                Provider.of<AnalyticsInfo>(context, listen: false)
                    .changeTotal(aFinalTotal);
                Provider.of<AnalyticsInfo>(context, listen: false)
                    .changeTotalCount(aTotalCount);
                Provider.of<AnalyticsInfo>(context, listen: false)
                    .changeMaxPrice(aMaxUnitCost);
                Provider.of<AnalyticsInfo>(context, listen: false)
                    .changeMaxPriceName(aMostExpensiveItem);
                Provider.of<AnalyticsInfo>(context, listen: false)
                    .changeFavItem(aFavouriteProduct);
              },
              icon: const Icon(Icons.arrow_circle_right_rounded),
            )
          ],
          title: Text(S.of(context).second_pagetext_1, style: TextStyle(fontSize: 28, color: Theme.of(context).cardColor,)), //Receipts library
          //backgroundColor: Colors.lime.shade200,
          backgroundColor: Theme.of(context).primaryColor,
          centerTitle: true,
        ),

        body: Container(
          //color: Colors.indigo.shade50,
          color: Theme.of(context).backgroundColor,
          child: Column(
            children: [
              Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    /// MONTHS SCROLL TOTALS
                    Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: _hasBeenPressed1 ? Theme.of(context).bottomAppBarColor : Theme.of(context).buttonColor,
                          //onPrimary: Colors.white,
                          //onPrimary: Colors.indigo.shade100,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                        ),
                        onPressed: () {
                          _pageController.jumpToPage(1);
                          setState(() {
                            _hasBeenPressed1 = !_hasBeenPressed1;
                          });
                          //FocusScope.of(context).highlightMode;
                        },
                        child: Text(S.of(context).second_pagetext_2)), //January
                    Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0)),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: _hasBeenPressed1 ? Theme.of(context).bottomAppBarColor : Theme.of(context).buttonColor,
                          //onPrimary: Colors.indigo.shade100,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                        ),
                        onPressed: () {
                          _pageController.jumpToPage(2);
                          setState(() {
                            _hasBeenPressed1 = !_hasBeenPressed1;
                          });
                        },
                        child: Text(S.of(context).second_pagetext_3)), //Febuary
                    Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0)),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: _hasBeenPressed1 ? Theme.of(context).bottomAppBarColor : Theme.of(context).buttonColor,
                          //onPrimary: Colors.indigo.shade100,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                        ),
                        onPressed: () {
                          _pageController.jumpToPage(3);
                          setState(() {
                            _hasBeenPressed3 = !_hasBeenPressed3;
                          });
                        },
                        child: Text(S.of(context).second_pagetext_4)), //March
                    Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0)),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: _hasBeenPressed1 ? Theme.of(context).bottomAppBarColor : Theme.of(context).buttonColor,
                          //onPrimary: Colors.indigo.shade100,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                        ),
                        onPressed: () {
                          _pageController.jumpToPage(4);
                          setState(() {
                            _hasBeenPressed4 = !_hasBeenPressed4;
                          });
                        },
                        child: Text(S.of(context).second_pagetext_5)),//April
                    Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0)),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: _hasBeenPressed1 ? Theme.of(context).bottomAppBarColor : Theme.of(context).buttonColor,
                          //onPrimary: Colors.indigo.shade100,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                        ),
                        onPressed: () {
                          _pageController.jumpToPage(5);
                          setState(() {
                            _hasBeenPressed5 = !_hasBeenPressed5;
                          });
                        },
                        child: Text(S.of(context).second_pagetext_6)),//May
                    Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0)),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: _hasBeenPressed1 ? Theme.of(context).bottomAppBarColor : Theme.of(context).buttonColor,
                          //onPrimary: Colors.indigo.shade100,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                        ),
                        onPressed: () {
                          _pageController.jumpToPage(6);
                          setState(() {
                            _hasBeenPressed6 = !_hasBeenPressed6;
                          });
                        },
                        child: Text(S.of(context).second_pagetext_7)),//June
                    Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0)),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: _hasBeenPressed1 ? Theme.of(context).bottomAppBarColor : Theme.of(context).buttonColor,
                          //onPrimary: Colors.indigo.shade100,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                        ),
                        onPressed: () {
                          _pageController.jumpToPage(7);
                          setState(() {
                            _hasBeenPressed7 = !_hasBeenPressed7;
                          });
                        },
                        child: Text(S.of(context).second_pagetext_8)),//July
                    Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0)),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: _hasBeenPressed1 ? Theme.of(context).bottomAppBarColor : Theme.of(context).buttonColor,
                          //onPrimary: Colors.indigo.shade100,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                        ),
                        onPressed: () {
                          _pageController.jumpToPage(8);
                          setState(() {
                            _hasBeenPressed8 = !_hasBeenPressed8;
                          });
                        },
                        child: Text(S.of(context).second_pagetext_9)),//August
                    Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0)),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: _hasBeenPressed1 ? Theme.of(context).bottomAppBarColor : Theme.of(context).buttonColor,
                          //onPrimary: Colors.indigo.shade100,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                        ),
                        onPressed: () {
                          _pageController.jumpToPage(9);
                          setState(() {
                            _hasBeenPressed9 = !_hasBeenPressed9;
                          });
                        },
                        child: Text(S.of(context).second_pagetext_10)),//September
                    Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0)),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: _hasBeenPressed1 ? Theme.of(context).bottomAppBarColor : Theme.of(context).buttonColor,
                          //onPrimary: Colors.indigo.shade100,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                        ),
                        onPressed: () {
                          _pageController.jumpToPage(10);
                          setState(() {
                            _hasBeenPressed10 = !_hasBeenPressed10;
                          });
                        },
                        child: Text(S.of(context).second_pagetext_11)),//October
                    Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0)),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: _hasBeenPressed1 ? Theme.of(context).bottomAppBarColor : Theme.of(context).buttonColor,
                          //onPrimary: Colors.indigo.shade100,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                        ),
                        onPressed: () {
                          _pageController.jumpToPage(11);
                          setState(() {
                            _hasBeenPressed11 = !_hasBeenPressed11;
                          });
                        },
                        child: Text(S.of(context).second_pagetext_12)),//Nuvember
                    Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0)),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: _hasBeenPressed1 ? Theme.of(context).bottomAppBarColor : Theme.of(context).buttonColor,
                          //onPrimary: Colors.indigo.shade100,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                        ),
                        onPressed: () {
                          _pageController.jumpToPage(12);
                          setState(() {
                            _hasBeenPressed12 = !_hasBeenPressed12;
                          });
                        },
                        child: Text(S.of(context).second_pagetext_13)),//December
                    Padding(padding: EdgeInsets.fromLTRB(0, 0, 10, 0)),

                    /// MONTHS SCROLL TOTALS
                  ],
                ),
              ),

              Expanded(
                child: PageView.builder(
                    itemCount: 12,
                    controller: _pageController,
                    itemBuilder: (context, position) {
                      //itemCount: myPages.length,
                      return ListView.builder(
                        shrinkWrap: true,
                        reverse: false,
                        physics: BouncingScrollPhysics(),
                        padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                        itemCount: ReceiptInfo.recInfo.length,
                        itemBuilder: (_, index) {
                        //stream: readReceipts(),
                        //builder: (context, snapshot) {
                          print('INDEX IS ');
                          print(ReceiptInfo.recInfo[index].dateID);

                          if (index == ReceiptInfo.recInfo[index].dateID) {

                            //final recs = snapshot.data!;
                            return Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)),
                              //color: Colors.lightGreen.shade800,
                              //color: Colors.amber.withOpacity(0.8),
                              color: Theme.of(context).buttonColor,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: ListTile(
                                  title: Text(
                                    ReceiptInfo.recInfo[index].dateTime.toString(),
                                    style: TextStyle(
                                        fontSize: 20,
                                      color: Theme.of(context).iconTheme.color,
                                    ),
                                  ),
                                  subtitle: Text(
                                      '${getStringFromDetails(
                                          index)}TOTAL: ${ReceiptInfo
                                          .recInfo[index]
                                          .finalTotal} / TAX: ${ReceiptInfo
                                          .recInfo[index].finalTax}',
                                  style: TextStyle(
                                    color: Theme.of(context).iconTheme.color,
                                  ),),
                                  leading: Icon(
                                    Icons.attach_money,
                                    size: 40,
                                    color: Theme.of(context).iconTheme.color,
                                  ),
                                  trailing: IconButton(
                                    icon: Icon(Icons.delete),
                                    color: Theme.of(context).iconTheme.color,
                                    //onPressed: Rec.receipts.removeAt(index),
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (context) =>
                                              AlertDialog(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(10),
                                                ),
                                                title: Text('Are you sure?'),
                                                actions: [
                                                  TextButton(
                                                      onPressed: () {
                                                        setState(() {
                                                          ReceiptInfo.recInfo
                                                              .removeAt(index);
                                                        });
                                                        Navigator.pop(context);
                                                      },
                                                      child: Text(
                                                        'Yes',
                                                        style: TextStyle(
                                                            color:
                                                            Colors.blueAccent),
                                                      )),
                                                  TextButton(
                                                      onPressed: () {
                                                        Navigator.pop(context);
                                                      },
                                                      child: Text(
                                                        'No',
                                                        style: TextStyle(
                                                            color: Colors.red),
                                                      ))
                                                ],
                                              ));
                                    },
                                  ),
                                ),
                              ),
                            );
                         }
                          else {return Card();}
                        }
                      );
                    }
                    /*children: [
                  PageOne(),
                  PageTwo(),
                ],*/
                    ),
              ),
            ],
          ),
        ),
      );

  String getStringFromDetails(int index) {
    String newString = '';
    //String maxName = '';
    //int? countMaxName;
    final docReceipt = FirebaseFirestore.instance.collection('receipts').doc();

    for (int i = 0; i < ReceiptInfo.recInfo[index].items!.length; i++) {
      newString = newString +
          ReceiptInfo.recInfo[index].items![i].name +
          ' ' +
          ReceiptInfo.recInfo[index].items![i].unitCost.toString() +
          '\n';
      aTotalCount = aTotalCount! + 1;

      ///нахождение макс цены для analytics_page
      if (ReceiptInfo.recInfo[index].items![i].unitCost?.toDouble() >
          aMaxUnitCost!) {
        aMaxUnitCost =
            ReceiptInfo.recInfo[index].items![i].unitCost?.toDouble();

        ///нахождение имени самого дорогого продукта
        aMostExpensiveItem = ReceiptInfo.recInfo[index].items![i].name;

        ///нахождение имени самого дорогого продукта
      }

      ///-----------------------------------
    }

    ///нахождение тотал для analytics_page
    aTotal = ReceiptInfo.recInfo[index].finalTotal?.toDouble();
    aFinalTotal = aFinalTotal! + aTotal!;

    ///-----------------------------------

    ///нахождение людимого продукта

    ///нахождение людимого продукта

    /*final rec = ReceiptToDB(
    dateTime: ReceiptInfo.recInfo[index].dateTime.toString(),
    items: newString,
    total: aTotal,
    tax: 0,
    );
    final json = rec.toJson();

    /*final json = {
      'items': newString,
      'total': aTotal,
      //'total': aTotal,
      'datetime': ReceiptInfo.recInfo[index].dateTime.toString(),
    };*/
    docReceipt.set(json);*/

    return newString;

  }

  /*Widget buildReceipt(ReceiptToDB receiptToDB) => ListTile(
    leading: CircleAvatar(child: (Text('${receiptToDB.dateTime}')),),
    title: Text('${receiptToDB.items}'),
    subtitle: Text('${receiptToDB.to}'),
  );

  Stream<List<ReceiptToDB>> readReceipts() => FirebaseFirestore.instance.collection('receipts')
      .snapshots().map((snapshot)=> snapshot.docs.map((doc) => ReceiptToDB.fromJson(doc.data())).toList());//скорее всего не лист
*/

}

/*class ReceiptToDB {
  final String? dateTime;
  final String? items;
  final num? total;
  final num? tax;

  ReceiptToDB({this.dateTime, this.items, this.total, this.tax});

  Map<String, dynamic> toJson() => {
    'dateTime': dateTime,
    'items': items,
    'total': total,
    'tax': tax,
  };
  static ReceiptToDB fromJson(Map<String, dynamic> json) => ReceiptToDB(
      dateTime: json['dateTime'],
      items: json['items'],
      total: json['total'],
      tax: json['tax'],
      );*/
//}