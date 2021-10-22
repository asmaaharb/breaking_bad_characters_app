import 'dart:math';

import 'package:breakingbad/core/router/router.dart';
import 'package:breakingbad/screens/splash/view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ولد الغلابه',
      navigatorKey: navigatorKey,
      onGenerateRoute: onGenerateRoute,
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
/*
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  void changeDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Dice',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: TextButton(
                  onPressed: () {
                    changeDice();
                  },
                  child: Image.asset('assets/images/Dice$leftDiceNumber.png')),
            ),
            Expanded(
              flex: 1,
              child: TextButton(
                  onPressed: () {
                    changeDice();
                  },
                  child: Image.asset('assets/images/Dice1.png$rightDiceNumber.png')),
            ),
          ],
        ),
      ),
    );
  }
}


*/