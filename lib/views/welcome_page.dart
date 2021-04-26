import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Sample'),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              Text('Welcome', style: new TextStyle(fontSize: 24.0)),
              SizedBox(height: 20),
              TextButton(onPressed: () {}, child: Text('Login')),
              SizedBox(height: 10),
              TextButton(onPressed: () {}, child: Text('Registration'))
            ])));
  }
}
