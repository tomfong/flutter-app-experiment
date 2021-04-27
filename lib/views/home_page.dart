import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
      ),
      body: CalculatorPanel(),
    );
  }
}

class CalculatorPanel extends StatefulWidget {
  @override
  _CalculatorPanelState createState() {
    return _CalculatorPanelState();
  }
}

class _CalculatorPanelState extends State<CalculatorPanel> {
  var _mainTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TextField(
          readOnly: true,
          controller: _mainTextController,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: ElevatedButton(
                child: Text('7'),
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
              ),
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            ),
            Container(
              child: ElevatedButton(
                child: Text('8'),
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
              ),
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            ),
            Container(
              child: ElevatedButton(
                child: Text('9'),
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
              ),
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: ElevatedButton(
                child: Text('4'),
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
              ),
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            ),
            Container(
              child: ElevatedButton(
                child: Text('5'),
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
              ),
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            ),
            Container(
              child: ElevatedButton(
                child: Text('6'),
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
              ),
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: ElevatedButton(
                child: Text('1'),
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
              ),
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            ),
            Container(
              child: ElevatedButton(
                child: Text('2'),
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
              ),
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            ),
            Container(
              child: ElevatedButton(
                child: Text('3'),
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
              ),
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            ),
          ],
        ),
      ],
    );
  }
}
