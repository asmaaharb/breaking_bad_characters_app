import 'package:flutter/material.dart';

class SignUpTitle extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0),
      child: Center(child: Text("Sign Up",style: TextStyle(color: Colors.grey,fontSize: 35,fontWeight: FontWeight.bold),)),
    );
  }
}
