import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Sample'),
          centerTitle: true,
        ),
        body: Center(
            child: Column(children: [
          Text('Login', style: new TextStyle(fontSize: 24.0))
        ])));
  }
}
