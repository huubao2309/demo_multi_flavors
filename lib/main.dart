import 'package:demo_multi_flavors/home_page.dart';
import 'package:demo_multi_flavors/splash_screen.dart';
import 'package:demo_multi_flavors/splash_screen_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(
    EasyLocalization(
      preloaderColor: Colors.red,
      supportedLocales: [
        Locale('vi', 'VN'), // index 0
        Locale('en', 'US'), // index 1
      ],
      path: 'lib/resources',
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        EasyLocalization.of(context).delegate,
      ],
      supportedLocales: EasyLocalization.of(context).supportedLocales,
      locale: EasyLocalization.of(context).locale,
      title: 'Demo Dev flavor',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: Navigator.defaultRouteName,
      routes: <String, WidgetBuilder>{
        Navigator.defaultRouteName: (context) => SplashPage(),
        '/splash': (context) => SplashPage(),
        "/home": (context) => MyHomePage(),
      },
    );
  }
}
