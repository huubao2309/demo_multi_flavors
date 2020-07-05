import 'package:flutter/material.dart';

class SplashScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.green, Colors.red],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Text(
          'Splash Screen',
          style: TextStyle(fontSize: 24.0, color: Colors.red),
        ),
      ),
    );
  }
}
