import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({Key key}) ;

  @override
  Widget build(BuildContext context) {
    return Text("Breaking Bad",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),);
  }
}
