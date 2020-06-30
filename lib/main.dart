import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp((MaterialApp(
home: Home(),
)));
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int num=1;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text(
            "Ask Me Anything",
        style: TextStyle(
         fontWeight: FontWeight.bold,
          fontSize: 25.0
        ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
      ),
      body: Container(
        child: Center(child: FlatButton(
          onPressed: () {
            setState(() {
              num=Random().nextInt(5)+1;
            });

          },
          child: Image.asset('images/ball$num.png'),
          ),
        ),
      ),
    );
  }
}
