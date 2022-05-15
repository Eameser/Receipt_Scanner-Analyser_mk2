import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nomldemo/pages/navpages/additional/chart.dart';
import 'package:nomldemo/receipt.dart';
import 'package:provider/provider.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../../generated/l10n.dart';

class AnalyticsPage extends StatefulWidget {
  //const AnalyticsPage({Key? key}) : super(key: key);

  @override
  _AnalyticsPageState createState() => _AnalyticsPageState();
}

class _AnalyticsPageState extends State<AnalyticsPage> {
  final List<BarChart> data = [
    BarChart(month: 'J', total: 0, color: charts.ColorUtil.fromDartColor(Colors.lime.shade200),),
    BarChart(month: 'F', total: 0, color: charts.ColorUtil.fromDartColor(Colors.lime.shade200),),
    BarChart(month: 'Mar', total: 0, color: charts.ColorUtil.fromDartColor(Colors.lime.shade200),),
    BarChart(month: 'Ap', total: 70, color: charts.ColorUtil.fromDartColor(Colors.lime.shade200),),
    BarChart(month: 'May', total: 0, color: charts.ColorUtil.fromDartColor(Colors.lime.shade200),),
    BarChart(month: 'Jun', total: 0, color: charts.ColorUtil.fromDartColor(Colors.lime.shade200),),
    BarChart(month: 'Jul', total: 0, color: charts.ColorUtil.fromDartColor(Colors.lime.shade200),),
    BarChart(month: 'Au', total: 0, color: charts.ColorUtil.fromDartColor(Colors.lime.shade200),),
    BarChart(month: 'S', total: 0, color: charts.ColorUtil.fromDartColor(Colors.lime.shade200),),
    BarChart(month: 'O', total: 0, color: charts.ColorUtil.fromDartColor(Colors.lime.shade200),),
    BarChart(month: 'N', total: 0, color: charts.ColorUtil.fromDartColor(Colors.lime.shade200),),
    BarChart(month: 'D', total: 0, color: charts.ColorUtil.fromDartColor(Colors.lime.shade200),),
  ];

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


  PageController _pageController = PageController(initialPage: 0,);
  int currentIndex = 0;


  @override
  Widget build(BuildContext context) {
    List<charts.Series<BarChart, String>> series = [
      charts.Series(
        id: 'fin',
        data: data,
        domainFn: (BarChart series, _)=> series.month,
        measureFn: (BarChart series, _)=> series.total,
        colorFn: (BarChart series, _)=> series.color,
      ),
    ];
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(S.of(context).third_pagetext_1,// 'Receipts analytics'
            style: TextStyle(
                fontSize: 28,
              color: Theme.of(context).cardColor,
            )),
        //backgroundColor: Colors.lime.shade200,
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Container(
          height: 1080,
          // не флексит
          width: 400,
          //color: Colors.indigo.shade50,
          color: Theme.of(context).backgroundColor,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
          child: Column(
            children: [
              //Spacer(),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    /// MONTHS SCROLL TOTALS
                    Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: _hasBeenPressed1 ? Theme.of(context).bottomAppBarColor : Theme.of(context).bottomAppBarColor,
                          //onPrimary: Colors.indigo.shade100,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                        ),
                        onPressed: () {
                          _pageController.jumpToPage(0);
                          setState(() {
                            _hasBeenPressed1 = !_hasBeenPressed1;
                          });
                        },
                        child: Text(S.of(context).third_pagetext_2)),// All time
                    //Spacer(),
                    Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0)),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: _hasBeenPressed1 ? Theme.of(context).bottomAppBarColor : Theme.of(context).buttonColor,
                          //onPrimary: Colors.indigo.shade100,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                        ),
                        onPressed: () {
                          _pageController.jumpToPage(1);
                          setState(() {
                            _hasBeenPressed1 = !_hasBeenPressed1;
                          });
                        },
                        child: Text(S.of(context).second_pagetext_2)),//January
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
                        child: Text(S.of(context).second_pagetext_3)),//Febuary
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
                            _hasBeenPressed1 = !_hasBeenPressed1;
                          });
                        },
                        child: Text(S.of(context).second_pagetext_4)),//March
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
                            _hasBeenPressed1 = !_hasBeenPressed1;
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
                        },
                        child: Text(S.of(context).second_pagetext_12)),//November
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
                        },
                        child: Text(S.of(context).second_pagetext_13)),//December
                    Padding(padding: EdgeInsets.fromLTRB(0, 0, 10, 0)),

                    /// MONTHS SCROLL TOTALS
                  ],
                ),
              ),
              //Spacer(),
              Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),


              Expanded(
                child: PageView(
                    controller: _pageController,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(50.0),
                                      bottomRight: Radius.circular(50.0),
                                    ),
                                    //color: Colors.lime.shade200,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                                  height: 80,
                                  width: 245,
                                  child: Text(S.of(context).third_pagetext_3 + Provider //You spent
                                      .of<AnalyticsInfo>(context)
                                      .total
                                      .toString(),
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                      )),
                                  //color: Colors.lime.shade200,
                                ),
                                Spacer(),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(50.0),
                                      bottomLeft: Radius.circular(50.0),
                                    ),
                                    //color: Colors.lime.shade200,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                                  height: 80,
                                  width: 100,
                                  //color: Colors.lime.shade200,
                                ),
                              ],
                            ),
                            Padding(padding: EdgeInsets.fromLTRB(
                                20, 20, 20, 20),),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(50.0),
                                      bottomRight: Radius.circular(50.0),
                                    ),
                                    //color: Colors.lime.shade200,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                                  height: 80,
                                  width: 260,
                                  child: Text(S.of(context).third_pagetext_4 + Provider //You bought
                                      .of<AnalyticsInfo>(context)
                                      .totalCount
                                      .toString() + S.of(context).third_pagetext_5, // items
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                      )),
                                  //color: Colors.lime.shade200,
                                ),
                                Spacer(),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(50.0),
                                      bottomLeft: Radius.circular(50.0),
                                    ),
                                    //color: Colors.lime.shade200,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                                  height: 80,
                                  width: 60,
                                  //color: Colors.lime.shade200,
                                ),
                              ],
                            ),
                            //Spacer(),
                            Padding(padding: EdgeInsets.fromLTRB(
                                20, 20, 20, 20),),
                            Row(
                              children: [
                                Spacer(),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(50.0),
                                      bottomLeft: Radius.circular(50.0),
                                    ),
                                    //color: Colors.indigo.shade100,
                                    color: Theme.of(context).accentColor,
                                    //color: Colors.lightGreen.shade300.withOpacity(0.3),
                                  ),
                                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                                  height: 100,
                                  width: 370,
                                  child: Text(
                                      S.of(context).third_pagetext_6 + Provider //Most expensive item (name):
                                          .of<AnalyticsInfo>(context)
                                          .maxPriceName
                                          .toString(),
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                      )),
                                  //color: Colors.lime.shade200,
                                ),
                              ],
                            ),
                            Padding(padding: EdgeInsets.fromLTRB(
                                20, 20, 20, 20),),
                            Row(
                              children: [
                                Spacer(),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(50.0),
                                      bottomLeft: Radius.circular(50.0),
                                    ),
                                    //color: Colors.indigo.shade100,
                                    color: Theme.of(context).accentColor,
                                    //color: Colors.lightGreen.shade300.withOpacity(0.3),
                                  ),
                                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                                  height: 100,
                                  width: 320,
                                  child: Text(
                                      S.of(context).third_pagetext_7 + Provider //Most expensive item (price):
                                          .of<AnalyticsInfo>(context)
                                          .maxPrice
                                          .toString(),
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                      )),
                                  //color: Colors.lime.shade200,
                                ),
                              ],
                            ),
                            Padding(padding: EdgeInsets.fromLTRB(
                                20, 20, 20, 20),),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(50.0),
                                      bottomRight: Radius.circular(50.0),
                                    ),
                                    //color: Colors.lime.shade200,
                                    color: Theme.of(context).primaryColor,
                                    //color: Colors.lightGreen.shade300.withOpacity(0.3),

                                  ),

                                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                                  height: 100,
                                  width: 300,
                                  child: Text(S.of(context).third_pagetext_8 + Provider //Favourite product:
                                      .of<AnalyticsInfo>(context)
                                      .favItem
                                      .toString(),
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                      )),
                                  //color: Colors.lime.shade200,
                                ),
                                Spacer(),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(50.0),
                                      bottomLeft: Radius.circular(50.0),
                                    ),
                                    //color: Colors.lime.shade200,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                                  height: 100,
                                  width: 40,
                                  //color: Colors.lime.shade200,
                                ),
                              ],
                            ),
                            //Spacer(),
                            Padding(padding: EdgeInsets.fromLTRB(
                                20, 20, 20, 20),),
                            Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25.0),
                                  //color: Colors.lightGreen.shade300.withOpacity(0.3),
                                  color: Theme.of(context).accentColor,
                                ),
                                height: 320,
                                width: 320,
                                child: charts.BarChart(
                                  series,
                                  animate: true,
                                  defaultRenderer: new charts.BarRendererConfig(
                                      cornerStrategy: const charts.ConstCornerStrategy(30)),
                                )
                            ),
                            //Padding(padding: EdgeInsets.fromLTRB(00, 0, 0, 20)),
                            //Spacer(),
                          ],
                        ),
                      ),
                      ///-------------------------------------------------------
                      Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(50.0),
                                      bottomRight: Radius.circular(50.0),
                                    ),
                                    color: Colors.lime.shade200,
                                  ),
                                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                                  height: 80,
                                  width: 220,
                                  child: Text(S.of(context).third_pagetext_3 + Provider
                                      .of<AnalyticsInfo>(context)
                                      .total
                                      .toString(),
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                      )),
                                  //color: Colors.lime.shade200,
                                ),
                                Spacer(),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(50.0),
                                      bottomLeft: Radius.circular(50.0),
                                    ),
                                    color: Colors.lime.shade200,
                                  ),
                                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                                  height: 80,
                                  width: 100,
                                  //color: Colors.lime.shade200,
                                ),
                              ],
                            ),
                            Padding(padding: EdgeInsets.fromLTRB(
                                20, 20, 20, 20),),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(50.0),
                                      bottomRight: Radius.circular(50.0),
                                    ),
                                    color: Colors.lime.shade200,
                                  ),
                                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                                  height: 80,
                                  width: 260,
                                  child: Text(S.of(context).third_pagetext_4 + Provider
                                      .of<AnalyticsInfo>(context)
                                      .totalCount
                                      .toString() + S.of(context).third_pagetext_5,
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                      )),
                                  //color: Colors.lime.shade200,
                                ),
                                Spacer(),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(50.0),
                                      bottomLeft: Radius.circular(50.0),
                                    ),
                                    color: Colors.lime.shade200,
                                  ),
                                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                                  height: 80,
                                  width: 60,
                                  //color: Colors.lime.shade200,
                                ),
                              ],
                            ),
                            //Spacer(),
                            Padding(padding: EdgeInsets.fromLTRB(
                                20, 20, 20, 20),),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(50.0),
                                      bottomRight: Radius.circular(50.0),
                                    ),
                                    color: Colors.indigo.shade100,
                                  ),
                                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                                  height: 100,
                                  width: 40,
                                  //color: Colors.lime.shade200,
                                ),
                                Spacer(),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(50.0),
                                      bottomLeft: Radius.circular(50.0),
                                    ),
                                    color: Colors.indigo.shade100,
                                    //color: Colors.lightGreen.shade300.withOpacity(0.3),
                                  ),
                                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                                  height: 100,
                                  width: 330,
                                  child: Text(
                                      S.of(context).third_pagetext_6 + Provider
                                          .of<AnalyticsInfo>(context)
                                          .maxPriceName
                                          .toString(),
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                      )),
                                  //color: Colors.lime.shade200,
                                ),
                              ],
                            ),
                            Padding(padding: EdgeInsets.fromLTRB(
                                20, 20, 20, 20),),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(50.0),
                                      bottomRight: Radius.circular(50.0),
                                    ),
                                    color: Colors.indigo.shade100,
                                  ),
                                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                                  height: 100,
                                  width: 70,
                                  //color: Colors.lime.shade200,
                                ),
                                Spacer(),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(50.0),
                                      bottomLeft: Radius.circular(50.0),
                                    ),
                                    color: Colors.indigo.shade100,
                                    //color: Colors.lightGreen.shade300.withOpacity(0.3),
                                  ),
                                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                                  height: 100,
                                  width: 270,
                                  child: Text(
                                      S.of(context).third_pagetext_7 + Provider
                                          .of<AnalyticsInfo>(context)
                                          .maxPrice
                                          .toString(),
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                      )),
                                  //color: Colors.lime.shade200,
                                ),
                              ],
                            ),
                            Padding(padding: EdgeInsets.fromLTRB(
                                20, 20, 20, 20),),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(50.0),
                                      bottomRight: Radius.circular(50.0),
                                    ),
                                    color: Colors.lime.shade200,
                                    //color: Colors.lightGreen.shade300.withOpacity(0.3),

                                  ),

                                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                                  height: 100,
                                  width: 300,
                                  child: Text(S.of(context).third_pagetext_8 + Provider
                                      .of<AnalyticsInfo>(context)
                                      .favItem
                                      .toString(),
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                      )),
                                  //color: Colors.lime.shade200,
                                ),
                                Spacer(),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(50.0),
                                      bottomLeft: Radius.circular(50.0),
                                    ),
                                    color: Colors.lime.shade200,
                                  ),
                                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                                  height: 100,
                                  width: 40,
                                  //color: Colors.lime.shade200,
                                ),
                              ],
                            ),
                            //Padding(padding: EdgeInsets.fromLTRB(00, 0, 0, 20)),
                            //Spacer(),
                          ],
                        ),
                      ),
                      ///-------------------------------------------------------
                      Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(50.0),
                                      bottomRight: Radius.circular(50.0),
                                    ),
                                    color: Colors.lime.shade200,
                                  ),
                                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                                  height: 80,
                                  width: 220,
                                  child: Text(S.of(context).third_pagetext_3 + Provider
                                      .of<AnalyticsInfo>(context)
                                      .total
                                      .toString(),
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                      )),
                                  //color: Colors.lime.shade200,
                                ),
                                Spacer(),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(50.0),
                                      bottomLeft: Radius.circular(50.0),
                                    ),
                                    color: Colors.lime.shade200,
                                  ),
                                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                                  height: 80,
                                  width: 100,
                                  //color: Colors.lime.shade200,
                                ),
                              ],
                            ),
                            Padding(padding: EdgeInsets.fromLTRB(
                                20, 20, 20, 20),),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(50.0),
                                      bottomRight: Radius.circular(50.0),
                                    ),
                                    color: Colors.lime.shade200,
                                  ),
                                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                                  height: 80,
                                  width: 260,
                                  child: Text(S.of(context).third_pagetext_4 + Provider
                                      .of<AnalyticsInfo>(context)
                                      .totalCount
                                      .toString() + S.of(context).third_pagetext_5,
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                      )),
                                  //color: Colors.lime.shade200,
                                ),
                                Spacer(),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(50.0),
                                      bottomLeft: Radius.circular(50.0),
                                    ),
                                    color: Colors.lime.shade200,
                                  ),
                                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                                  height: 80,
                                  width: 60,
                                  //color: Colors.lime.shade200,
                                ),
                              ],
                            ),
                            //Spacer(),
                            Padding(padding: EdgeInsets.fromLTRB(
                                20, 20, 20, 20),),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(50.0),
                                      bottomRight: Radius.circular(50.0),
                                    ),
                                    color: Colors.indigo.shade100,
                                  ),
                                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                                  height: 100,
                                  width: 40,
                                  //color: Colors.lime.shade200,
                                ),
                                Spacer(),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(50.0),
                                      bottomLeft: Radius.circular(50.0),
                                    ),
                                    color: Colors.indigo.shade100,
                                    //color: Colors.lightGreen.shade300.withOpacity(0.3),
                                  ),
                                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                                  height: 100,
                                  width: 330,
                                  child: Text(
                                      S.of(context).third_pagetext_6 + Provider
                                          .of<AnalyticsInfo>(context)
                                          .maxPriceName
                                          .toString(),
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                      )),
                                  //color: Colors.lime.shade200,
                                ),
                              ],
                            ),
                            Padding(padding: EdgeInsets.fromLTRB(
                                20, 20, 20, 20),),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(50.0),
                                      bottomRight: Radius.circular(50.0),
                                    ),
                                    color: Colors.indigo.shade100,
                                  ),
                                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                                  height: 100,
                                  width: 70,
                                  //color: Colors.lime.shade200,
                                ),
                                Spacer(),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(50.0),
                                      bottomLeft: Radius.circular(50.0),
                                    ),
                                    color: Colors.indigo.shade100,
                                    //color: Colors.lightGreen.shade300.withOpacity(0.3),
                                  ),
                                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                                  height: 100,
                                  width: 270,
                                  child: Text(
                                      S.of(context).third_pagetext_7 + Provider
                                          .of<AnalyticsInfo>(context)
                                          .maxPrice
                                          .toString(),
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                      )),
                                  //color: Colors.lime.shade200,
                                ),
                              ],
                            ),
                            Padding(padding: EdgeInsets.fromLTRB(
                                20, 20, 20, 20),),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(50.0),
                                      bottomRight: Radius.circular(50.0),
                                    ),
                                    color: Colors.lime.shade200,
                                    //color: Colors.lightGreen.shade300.withOpacity(0.3),

                                  ),

                                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                                  height: 100,
                                  width: 300,
                                  child: Text(S.of(context).third_pagetext_8 + Provider
                                      .of<AnalyticsInfo>(context)
                                      .favItem
                                      .toString(),
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                      )),
                                  //color: Colors.lime.shade200,
                                ),
                                Spacer(),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(50.0),
                                      bottomLeft: Radius.circular(50.0),
                                    ),
                                    color: Colors.lime.shade200,
                                  ),
                                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                                  height: 100,
                                  width: 40,
                                  //color: Colors.lime.shade200,
                                ),
                              ],
                            ),
                            //Padding(padding: EdgeInsets.fromLTRB(00, 0, 0, 20)),
                            //Spacer(),
                          ],
                        ),
                      ),
                      ///-------------------------------------------------------
                      Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(50.0),
                                      bottomRight: Radius.circular(50.0),
                                    ),
                                    color: Colors.lime.shade200,
                                  ),
                                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                                  height: 80,
                                  width: 220,
                                  child: Text(S.of(context).third_pagetext_3 + Provider
                                      .of<AnalyticsInfo>(context)
                                      .total
                                      .toString(),
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                      )),
                                  //color: Colors.lime.shade200,
                                ),
                                Spacer(),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(50.0),
                                      bottomLeft: Radius.circular(50.0),
                                    ),
                                    color: Colors.lime.shade200,
                                  ),
                                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                                  height: 80,
                                  width: 100,
                                  //color: Colors.lime.shade200,
                                ),
                              ],
                            ),
                            Padding(padding: EdgeInsets.fromLTRB(
                                20, 20, 20, 20),),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(50.0),
                                      bottomRight: Radius.circular(50.0),
                                    ),
                                    color: Colors.lime.shade200,
                                  ),
                                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                                  height: 80,
                                  width: 260,
                                  child: Text(S.of(context).third_pagetext_5 + Provider
                                      .of<AnalyticsInfo>(context)
                                      .totalCount
                                      .toString() + S.of(context).third_pagetext_6,
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                      )),
                                  //color: Colors.lime.shade200,
                                ),
                                Spacer(),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(50.0),
                                      bottomLeft: Radius.circular(50.0),
                                    ),
                                    color: Colors.lime.shade200,
                                  ),
                                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                                  height: 80,
                                  width: 60,
                                  //color: Colors.lime.shade200,
                                ),
                              ],
                            ),
                            //Spacer(),
                            Padding(padding: EdgeInsets.fromLTRB(
                                20, 20, 20, 20),),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(50.0),
                                      bottomRight: Radius.circular(50.0),
                                    ),
                                    color: Colors.indigo.shade100,
                                  ),
                                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                                  height: 100,
                                  width: 40,
                                  //color: Colors.lime.shade200,
                                ),
                                Spacer(),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(50.0),
                                      bottomLeft: Radius.circular(50.0),
                                    ),
                                    color: Colors.indigo.shade100,
                                    //color: Colors.lightGreen.shade300.withOpacity(0.3),
                                  ),
                                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                                  height: 100,
                                  width: 330,
                                  child: Text(
                                      S.of(context).third_pagetext_6 + Provider
                                          .of<AnalyticsInfo>(context)
                                          .maxPriceName
                                          .toString(),
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                      )),
                                  //color: Colors.lime.shade200,
                                ),
                              ],
                            ),
                            Padding(padding: EdgeInsets.fromLTRB(
                                20, 20, 20, 20),),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(50.0),
                                      bottomRight: Radius.circular(50.0),
                                    ),
                                    color: Colors.indigo.shade100,
                                  ),
                                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                                  height: 100,
                                  width: 70,
                                  //color: Colors.lime.shade200,
                                ),
                                Spacer(),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(50.0),
                                      bottomLeft: Radius.circular(50.0),
                                    ),
                                    color: Colors.indigo.shade100,
                                    //color: Colors.lightGreen.shade300.withOpacity(0.3),
                                  ),
                                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                                  height: 100,
                                  width: 270,
                                  child: Text(
                                      S.of(context).third_pagetext_7 + Provider
                                          .of<AnalyticsInfo>(context)
                                          .maxPrice
                                          .toString(),
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                      )),
                                  //color: Colors.lime.shade200,
                                ),
                              ],
                            ),
                            Padding(padding: EdgeInsets.fromLTRB(
                                20, 20, 20, 20),),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(50.0),
                                      bottomRight: Radius.circular(50.0),
                                    ),
                                    color: Colors.lime.shade200,
                                    //color: Colors.lightGreen.shade300.withOpacity(0.3),

                                  ),

                                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                                  height: 100,
                                  width: 300,
                                  child: Text(S.of(context).third_pagetext_8 + Provider
                                      .of<AnalyticsInfo>(context)
                                      .favItem
                                      .toString(),
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                      )),
                                  //color: Colors.lime.shade200,
                                ),
                                Spacer(),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(50.0),
                                      bottomLeft: Radius.circular(50.0),
                                    ),
                                    color: Colors.lime.shade200,
                                  ),
                                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                                  height: 100,
                                  width: 40,
                                  //color: Colors.lime.shade200,
                                ),
                              ],
                            ),
                            //Padding(padding: EdgeInsets.fromLTRB(00, 0, 0, 20)),
                            //Spacer(),
                          ],
                        ),
                      ),
                      ///-------------------------------------------------------
                      Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(50.0),
                                      bottomRight: Radius.circular(50.0),
                                    ),
                                    color: Colors.lime.shade200,
                                  ),
                                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                                  height: 80,
                                  width: 220,
                                  child: Text(S.of(context).third_pagetext_3 + Provider
                                      .of<AnalyticsInfo>(context)
                                      .total
                                      .toString(),
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                      )),
                                  //color: Colors.lime.shade200,
                                ),
                                Spacer(),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(50.0),
                                      bottomLeft: Radius.circular(50.0),
                                    ),
                                    color: Colors.lime.shade200,
                                  ),
                                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                                  height: 80,
                                  width: 100,
                                  //color: Colors.lime.shade200,
                                ),
                              ],
                            ),
                            Padding(padding: EdgeInsets.fromLTRB(
                                20, 20, 20, 20),),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(50.0),
                                      bottomRight: Radius.circular(50.0),
                                    ),
                                    color: Colors.lime.shade200,
                                  ),
                                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                                  height: 80,
                                  width: 260,
                                  child: Text(S.of(context).third_pagetext_4 + Provider
                                      .of<AnalyticsInfo>(context)
                                      .totalCount
                                      .toString() + S.of(context).third_pagetext_5,
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                      )),
                                  //color: Colors.lime.shade200,
                                ),
                                Spacer(),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(50.0),
                                      bottomLeft: Radius.circular(50.0),
                                    ),
                                    color: Colors.lime.shade200,
                                  ),
                                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                                  height: 80,
                                  width: 60,
                                  //color: Colors.lime.shade200,
                                ),
                              ],
                            ),
                            //Spacer(),
                            Padding(padding: EdgeInsets.fromLTRB(
                                20, 20, 20, 20),),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(50.0),
                                      bottomRight: Radius.circular(50.0),
                                    ),
                                    color: Colors.indigo.shade100,
                                  ),
                                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                                  height: 100,
                                  width: 40,
                                  //color: Colors.lime.shade200,
                                ),
                                Spacer(),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(50.0),
                                      bottomLeft: Radius.circular(50.0),
                                    ),
                                    color: Colors.indigo.shade100,
                                    //color: Colors.lightGreen.shade300.withOpacity(0.3),
                                  ),
                                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                                  height: 100,
                                  width: 330,
                                  child: Text(
                                      S.of(context).third_pagetext_6 + Provider
                                          .of<AnalyticsInfo>(context)
                                          .maxPriceName
                                          .toString(),
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                      )),
                                  //color: Colors.lime.shade200,
                                ),
                              ],
                            ),
                            Padding(padding: EdgeInsets.fromLTRB(
                                20, 20, 20, 20),),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(50.0),
                                      bottomRight: Radius.circular(50.0),
                                    ),
                                    color: Colors.indigo.shade100,
                                  ),
                                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                                  height: 100,
                                  width: 70,
                                  //color: Colors.lime.shade200,
                                ),
                                Spacer(),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(50.0),
                                      bottomLeft: Radius.circular(50.0),
                                    ),
                                    color: Colors.indigo.shade100,
                                    //color: Colors.lightGreen.shade300.withOpacity(0.3),
                                  ),
                                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                                  height: 100,
                                  width: 270,
                                  child: Text(
                                      S.of(context).third_pagetext_7 + Provider
                                          .of<AnalyticsInfo>(context)
                                          .maxPrice
                                          .toString(),
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                      )),
                                  //color: Colors.lime.shade200,
                                ),
                              ],
                            ),
                            Padding(padding: EdgeInsets.fromLTRB(
                                20, 20, 20, 20),),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(50.0),
                                      bottomRight: Radius.circular(50.0),
                                    ),
                                    color: Colors.lime.shade200,
                                    //color: Colors.lightGreen.shade300.withOpacity(0.3),

                                  ),

                                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                                  height: 100,
                                  width: 300,
                                  child: Text(S.of(context).third_pagetext_8 + Provider
                                      .of<AnalyticsInfo>(context)
                                      .favItem
                                      .toString(),
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                      )),
                                  //color: Colors.lime.shade200,
                                ),
                                Spacer(),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(50.0),
                                      bottomLeft: Radius.circular(50.0),
                                    ),
                                    color: Colors.lime.shade200,
                                  ),
                                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                                  height: 100,
                                  width: 40,
                                  //color: Colors.lime.shade200,
                                ),
                              ],
                            ),
                            //Padding(padding: EdgeInsets.fromLTRB(00, 0, 0, 20)),
                            //Spacer(),
                          ],
                        ),
                      ),
                    ]
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




