
import 'package:breakingbad/screens/logIn/controllers/controller.dart';
import 'package:breakingbad/screens/logIn/states/controller.dart';
import 'package:breakingbad/screens/signUp/controllers/controller.dart';
import 'package:breakingbad/screens/signUp/states/controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpConfirmButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = SignUpController.of(context);
    return BlocBuilder(
      bloc: controller,
      builder: (context, state) => state is SignUpLoading
          ? CupertinoActivityIndicator()
          : InkWell(
        onTap: controller.signUp,
        child: Container(
            width: 150,
            height: 50,
            decoration: BoxDecoration(color: Colors.amber, borderRadius: BorderRadius.circular(20)),
            child: Center(child: Text('SignUp',style: TextStyle(color: Colors.white,fontSize: 20),))),
      ),
    );
  }
}