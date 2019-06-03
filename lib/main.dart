import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(),
        body: TextAndButton(),
      ),
    );
  }
}

// A stack of widgets that contains a button that the user
// can tap on to increment a counter and a piece of text
// that displays the counter data.
class TextAndButton extends StatefulWidget {
  @override
  TextAndButtonState createState() => TextAndButtonState();
}

class TextAndButtonState extends State<TextAndButton> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text("Count: $_counter"),
          RaisedButton(
            onPressed: _incrementCounter,
            child: Text("INCREMENT COUNTER"),
          )
        ],
      ),
    );
  }
}
