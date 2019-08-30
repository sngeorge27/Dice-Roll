import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.indigo[200],
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        title: Text(
          'Dice Roll',
          style: TextStyle(
            color: Colors.indigo[50],
          ),
        ),
      ),
      body: MainPage(),
    ),
  ),
  );
}

class MainPage extends StatefulWidget{
  @override
  _MainPageState createState() => _MainPageState();
}
class _MainPageState extends State<MainPage> {
  var leftDiceNumber = 1;
  var rightDiceNumber = 5;

  void changeDice() {
    setState(() {
      rightDiceNumber = Random().nextInt(6) + 1;
      leftDiceNumber = Random().nextInt(6) + 1;
    });
  }
  @override

  Widget build(BuildContext context) {

      return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.0),
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: (){
                  changeDice();
                },
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: FlatButton(
                onPressed: (){
                  changeDice();
                },
                child: Image.asset('images/dice$rightDiceNumber.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
