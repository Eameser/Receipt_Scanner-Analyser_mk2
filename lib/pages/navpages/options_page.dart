import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import '../../generated/l10n.dart';
import '../../receipt.dart';

class OptionsPage extends StatefulWidget {
  //const Options({Key? key}) : super(key: key);

  @override
  _OptionsStatePage createState() => _OptionsStatePage();
}

class _OptionsStatePage extends State<OptionsPage> {
  bool state = false;
  var speedDialDirection = SpeedDialDirection.down;
  String? ru = "RU";
  String? en = "EN";
  String? de = "DE";
  String? buffer = " ";

  @override
  Widget build(BuildContext context) {
    if (buffer == " "){
      buffer = en;
    }

    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      //backgroundColor: Colors.indigo.shade50,
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text(S.of(context).fourth_pagetext_1,
            style: TextStyle(fontSize: 28, color: Theme.of(context).cardColor,)),//Options
        //backgroundColor: Colors.lime.shade200,
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    color: Theme.of(context).accentColor,
                  ),

                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(40, 0, 20, 0),
                        child: Text(S.of(context).fourth_pagetext_2,//Language
                            style: TextStyle(
                              fontSize: 28,
                              color: Colors.white,
                            )),
                      ),
                      Spacer(),
                      /*ElevatedButton(onPressed: (){
                        context.read<LanguageChangeProvider>().changeLocale("en");
                      }, child: Text('EN')),
                      Spacer(),
                      ElevatedButton(onPressed: (){
                        context.read<LanguageChangeProvider>().changeLocale("ru");
                      }, child: Text('RU')),*/
                      ElevatedButton(
                        onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            //fixedSize: Size(45,50),
                              primary: Colors.transparent,
                              shadowColor: Colors.transparent,
                              //onPrimary: Colors.indigo.shade100,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                          ),
                        child: SpeedDial(
                          buttonSize: Size(40, 40),
                          label: Text(buffer!,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                              )),
                          backgroundColor: Theme.of(context).buttonColor,
                          overlayColor: Theme.of(context).bottomAppBarColor,
                          //activeBackgroundColor: Colors.red,
                          //activeForegroundColor: Colors.red,

                          direction: speedDialDirection,
                          switchLabelPosition: true,
                          children: [
                            SpeedDialChild(
                              child: Text('RU'),
                              onTap: changeLabelToRu,
                            ),
                            SpeedDialChild(
                              child: Text('EN'),
                              onTap: changeLabelToEn,
                            ),
                            SpeedDialChild(
                              child: Text('DE'),
                              //onTap: () => context.read<LanguageChangeProvider>().changeLocale("ru"),
                            ),
                          ],
                        )
                      ),

                    ],
                  ),
                ),

              ],
            ),
            //Spacer(),
            Padding(padding: EdgeInsets.fromLTRB(20, 20, 20, 0),),
            Row(
              children: [
                Container(
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    color: Theme.of(context).accentColor,
                  ),

                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(40, 0, 20, 0),
                        child: Text(S.of(context).fourth_pagetext_3,//Theme
                            style: TextStyle(
                              fontSize: 28,
                              color: Colors.white,
                            )),
                      ),
                      Spacer(),
                      Switch.adaptive(
                          value: themeProvider.isLightMode,
                          //inactiveThumbColor: Colors.red,
                          activeColor: Colors.lime.shade200,
                          onChanged: (value) {
                            final provider = Provider.of<ThemeProvider>(context, listen: false);
                            provider.toggleTheme(value);
                          }
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),

      ),

    );
  }
  void changeLabelToRu() {
    context.read<LanguageChangeProvider>().changeLocale("ru");
    buffer = ru;
}
  void changeLabelToEn() {
    context.read<LanguageChangeProvider>().changeLocale("en");
    buffer = en;
  }
}

