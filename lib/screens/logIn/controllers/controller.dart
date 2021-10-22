import 'dart:convert';
import 'package:breakingbad/core/router/router.dart';
import 'package:breakingbad/screens/home/view.dart';
import 'package:breakingbad/screens/logIn/states/controller.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginController extends Cubit<LoginStates> {
  LoginController() : super(LoginInit());

  static LoginController of(context)=> BlocProvider.of(context);

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  Future<void> login()async{
    final dio = Dio(BaseOptions(validateStatus: (v)=> v < 500));
    if(!formKey.currentState.validate()) return;
    emit(LoginLoading());
    final formData = {
      'email': emailController.text,
      'password': passwordController.text
    };
    try{
      final response = await dio.post('https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyAS4k7BZguxcJAAsAqN5bwqCPz2XEGt1jg',
          data: jsonEncode(formData));
      final data = response.data as Map;
      if(data.containsKey('idToken'))
        ScaffoldMessenger.of(MagicRouter.currentContext).showSnackBar(
            SnackBar(content: Text('Error!'))
        );
      else
        MagicRouter.navigateAndPopAll(HomeView());
    }catch(e,s){
      print(e);
      print(s);

    }
    emit(LoginInit());
  }

}