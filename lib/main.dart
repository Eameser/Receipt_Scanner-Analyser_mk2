import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nomldemo/pages/navpages/main_page.dart';
import 'package:nomldemo/receipt.dart';
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'generated/l10n.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AnalyticsInfo()),
      ],
      child: MyApp(),
    )
  );
}

/*void main() => runApp(
    ChangeNotifierProvider(
        create: (_) => AnalyticsInfo(),
        child: MyApp(),
  ),
);*/

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LanguageChangeProvider>(
      create: (context) =>  LanguageChangeProvider(),
      //create: (context) =>  LanguageChangeProvider(),
      child: ChangeNotifierProvider<ThemeProvider>(
        create: (context) =>  ThemeProvider(),
        child: Builder(
          builder: (context){
            final themeProvider = Provider.of<ThemeProvider>(context);
            return MaterialApp(
              locale: Provider.of<LanguageChangeProvider>(context, listen: true).currentLocale,
            //locale: new Locale("ru"),
              localizationsDelegates: [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: S.delegate.supportedLocales,
            title: "No ML Demo",
            debugShowCheckedModeBanner: false,
              ///THEME MODE
              themeMode: themeProvider.themeMode,
              theme: MyThemes.coloredTheme,
              darkTheme: MyThemes.darkTheme,
              ///THEME MODE
            /*theme: ThemeData(
              primarySwatch: Colors.blue,
            ),*/
            home: MainPage()
          );
  }
        ),
      ),
    );
  }
}
