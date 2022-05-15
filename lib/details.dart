import 'package:firebase_ml_vision/firebase_ml_vision.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:nomldemo/receipt.dart';
import 'package:nomldemo/pages/navpages/additional/confirn_helper.dart';
import 'package:nomldemo/pages/navpages/main_page.dart';
import 'package:nomldemo/pages/navpages/additional/confirn_helper.dart';
import 'package:nomldemo/pages/navpages/additional/user_dialog.dart';

import 'generated/l10n.dart';

final formatCurrency = new NumberFormat.simpleCurrency();

class Details extends StatefulWidget {
  final VisionText? vtext;
  Details(this.vtext);

  @override
  _DetailsState createState() => _DetailsState();
}
class _DetailsState extends State<Details> {

  RegExp january = new RegExp(r"([0-9]{4}\-01\-[0-9]{2})");
  RegExp february = new RegExp(r"([0-9]{4}\-02\-[0-9]{2})");
  RegExp march = new RegExp(r"([0-9]{4}\-03\-[0-9]{2})");
  RegExp april = new RegExp(r"([0-9]{4}\-04\-[0-9]{2})");
  RegExp may = new RegExp(r"([0-9]{4}\-05\-[0-9]{2})");
  RegExp june = new RegExp(r"([0-9]{4}\-06\-[0-9]{2})");
  RegExp july = new RegExp(r"([0-9]{4}\-07\-[0-9]{2})");
  RegExp august = new RegExp(r"([0-9]{4}\-08\-[0-9]{2})");
  RegExp september = new RegExp(r"([0-9]{4}\-09\-[0-9]{2})");
  RegExp october = new RegExp(r"([0-9]{4}\-10\-[0-9]{2})");
  RegExp november = new RegExp(r"([0-9]{4}\-11\-[0-9]{2})");
  RegExp december = new RegExp(r"([0-9]{4}\-12\-[0-9]{2})");

  final GlobalKey<ScaffoldState> _key = new GlobalKey<ScaffoldState>();
  //TextEditingController? _noteController = new TextEditingController();
  final DateTime _cD = DateTime.now();
  var receiptInfo;
  bool receiptReady = false;

  Future getReceiptInfo(vtext) async {
    var text = ConfirmHelper.getText(vtext);
    var info = ConfirmHelper.getItems(text);

    setState(() {
      receiptInfo = info;
      receiptReady = true;
    });
    // return;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
          key: _key,
          appBar: AppBar(
            leading: IconButton(
              color: Theme.of(context).cardColor,
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => MainPage()));
              },
              icon: const Icon(Icons.arrow_back_ios_new),
            ),
            title: Text(S.of(context).details_pagetext_1, //Receipt details
              style: TextStyle(
                  fontSize: 30,
                color: Theme.of(context).cardColor,
              ),),
            centerTitle: true,
            //backgroundColor: Colors.lime.shade200,
            backgroundColor: Theme.of(context).primaryColor,
            actions: [
              IconButton(
                icon: Icon(Icons.check),
                onPressed: acceptChanges,
                color: Theme.of(context).cardColor,
              )
            ],
          ),
          body: FutureBuilder(
            future: getReceiptInfo(widget.vtext),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done &&
                  receiptInfo != null) {
                // If the Future is complete, display the preview.
                print('receipt');
                return Container(
                  color: Theme.of(context).cardColor,
                  child: Column(
                    children: [
                    Expanded(child: ListView.builder(
                        padding: const EdgeInsets.all(8.0),
                        itemCount: receiptInfo.items.length,
                        itemBuilder: (BuildContext context, int i) {
                          return ListTile(
                            title: Text(
                                '${receiptInfo.items[i].name != '' ? receiptInfo
                                    .items[i].name : 'Unknown Item'}',
                              style: TextStyle(
                                color: Theme.of(context).iconTheme.color,
                              ),
                            ),
                            trailing: Text('${formatCurrency.format(
                                receiptInfo.items[i].totalCost)}',
                              style: TextStyle(
                                color: Theme.of(context).iconTheme.color,
                              ),),
                          );
                        }
                    ),
                    ),
                    Center(
                      child: ElevatedButton(
                        //color: Colors.green,
                        style: ElevatedButton.styleFrom(
                          primary: Theme.of(context).primaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),),

                        onPressed: () {
                          showDialog(context: context, builder: (context) =>
                              AlertDialog(
                                content: AddItem(addNewItem),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ));
                        },
                        child: Icon(Icons.add)
                      ),
                    ),
                    Divider(
                      color: Theme.of(context).iconTheme.color,
                      thickness: 3,
                    ),
                    ListTile(
                      title: Text(S.of(context).details_pagetext_2,
                        style: TextStyle(
                          color: Theme.of(context).iconTheme.color,
                        ),),//Tax
                      trailing: Text(
                          '${formatCurrency.format(receiptInfo.finalTax)}',
                        style: TextStyle(
                          color: Theme.of(context).iconTheme.color,
                        ),),
                    ),
                    ListTile(
                      title: Text(S.of(context).details_pagetext_3,
                        style: TextStyle(
                          color: Theme.of(context).iconTheme.color,
                        ),),//Total
                      trailing: Text(
                          '${formatCurrency.format(receiptInfo.finalTotal)}',
                        style: TextStyle(
                          color: Theme.of(context).iconTheme.color,
                        ),),
                    ),
                    Container(
                      height: 20.0,
                    ),
                  ],),
                );
              } else {
                // Otherwise, display a loading indicator.
                print('loading');
                return Center(child: CircularProgressIndicator());
              }
            },
          )
      ),
      onWillPop: () async {
        return false;
      },
    );
  }

  Future acceptChanges() async {
    String _fD = new DateFormat('yyyy-MM-dd  kk:mm').format(_cD);
    //String? value = receiptInfo as String;
    int dateID = 0;

    if (january.hasMatch(_fD)) {
      dateID = 1;
    }
    //else
    if (february.hasMatch(_fD)) {
      dateID = 2;
    }
    //else
    if (march.hasMatch(_fD)) {
      dateID = 3;
    }
    //else
    if (april.hasMatch(_fD)) {
      dateID = 4;
    }
    if (may.hasMatch(_fD)) {
      dateID = 5;
    }
    //else
    if (june.hasMatch(_fD)) {
      dateID = 6;
    }
    //else
    if (july.hasMatch(_fD)) {
      dateID = 7;
    }
    //else
    if (august.hasMatch(_fD)) {
      dateID = 8;
    }
    //else
    if (september.hasMatch(_fD)) {
      dateID = 9;
    }
    if (october.hasMatch(_fD)) {
      dateID = 10;
    }
    if (november.hasMatch(_fD)) {
      dateID = 11;
    }
    if (december.hasMatch(_fD)) {
      dateID = 12;
    }
    /*else {
      dataID = 12;
    }*/


    setState(() {
      //getvalue = _noteController!.text;
      //Receipt.receipts.insert(0, Receipt(date_time: _fD, retrieved_text: getvalue));//Rec.receipts.add(Rec(date_time: _fD, retrieved_text: getvalue));

      ReceiptInfo.recInfo.insert(0, ReceiptInfo(_fD, dateID, receiptInfo.items, receiptInfo.finalTotal, receiptInfo.finalTax));
      //Navigator.push(context, new MaterialPageRoute(builder: (context) => ReceiptsLibraryPage(2)));
      Navigator.of(context).pop();
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => MainPage()));
    });
  }

  void addNewItem(Item item) {
    setState(() {
      receiptInfo.items.add(item);
    });
  }
}