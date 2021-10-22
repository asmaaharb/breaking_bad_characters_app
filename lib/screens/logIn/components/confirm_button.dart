
import 'package:breakingbad/screens/logIn/controllers/controller.dart';
import 'package:breakingbad/screens/logIn/states/controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginConfirmButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = LoginController.of(context);
    return BlocBuilder(
      bloc: controller,
      builder: (context, state) =>
      state is LoginLoading
          ? CupertinoActivityIndicator()
          : InkWell(
        onTap: controller.login,
        child: Container(
            width: 150,
            height: 50,
            decoration: BoxDecoration(color: Colors.amber, borderRadius: BorderRadius.circular(20)),
            child: Center(child: Text('LogIn',style: TextStyle(color: Colors.white,fontSize: 20),))),
      ),
    );
  }
}