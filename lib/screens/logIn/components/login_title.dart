import 'package:flutter/material.dart';

class LoginTitle extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0),
      child: Center(child: Text("LogIn",style: TextStyle(color: Colors.grey,fontSize: 35,fontWeight: FontWeight.bold),)),
    );
  }
}
