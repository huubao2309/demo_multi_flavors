import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Multi Favor'),
      ),
      body: Container(
        child: Center(
          child: Text(
            'DEV ENVIRONMENT',
            style: TextStyle(
              fontSize: 24.0,
            ),
          ),
        ),
      ),
    );
  }
}
