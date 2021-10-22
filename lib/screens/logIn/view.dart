import 'package:breakingbad/screens/logIn/components/appbar.dart';
import 'package:breakingbad/screens/logIn/components/login_title.dart';
import 'package:breakingbad/screens/logIn/components/signup_hint.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'components/confirm_button.dart';
import 'components/login_form.dart';
import 'controllers/controller.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginController(),
      child: Scaffold(
        appBar: loginAppBar(),
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            LoginTitle(),
            LoginForm(),
            LoginConfirmButton(),
            SignUpHint()
          ],
        ),
      ),
    );
  }
}