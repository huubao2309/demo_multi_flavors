import 'package:flutter/material.dart';

import 'splash_screen_widget.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _startApp();
  }

  _startApp() {
    Future.delayed(
      Duration(seconds: 3), // Deplay 3s

      () async {
        Navigator.pushReplacementNamed(context, "/home");
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashScreenWidget(),
    );
  }
}
