import 'package:flutter/material.dart';
import 'package:nomldemo/pages/navpages/options_page.dart';
import 'package:nomldemo/pages/navpages/receipt_page.dart';
import 'package:nomldemo/pages/navpages/scan_page.dart';
//import 'package:nomldemo/pages/navpages/my_page.dart';
import 'package:nomldemo/pages/navpages/analytics_page.dart';


class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  List pages = [
    ScanPage(0),
    ReceiptsLibraryPage(),
    AnalyticsPage(),
    OptionsPage(),
  ];
  int currentIndex = 1;

  void onTap(int index){
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        //type: BottomNavigationBarType.fixed,
        //backgroundColor: Colors.black,
        onTap: onTap,
        currentIndex: currentIndex,//перемещает начальный экран
        //selectedItemColor: Colors.white,
        //unselectedItemColor: Colors.indigo.shade50,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        elevation: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.center_focus_strong_outlined), label: 'Scan', backgroundColor: Theme.of(context).bottomAppBarColor),
          BottomNavigationBarItem(icon: Icon(Icons.article_outlined), label: 'Receipts', backgroundColor: Theme.of(context).bottomAppBarColor),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart_sharp), label: 'Analytics', backgroundColor: Theme.of(context).bottomAppBarColor),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Options', backgroundColor: Theme.of(context).bottomAppBarColor),
          //BottomNavigationBarItem(icon: Icon(Icons.attach_money_outlined), label: 'Advisor', backgroundColor: Colors.lime.shade200),
        ],
      ),
    );
  }
}
