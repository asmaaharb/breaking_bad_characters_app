import 'package:breakingbad/widgets/title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'components/appbar.dart';
import 'components/login_hint.dart';
import 'components/signup_confirm_button.dart';
import 'components/signup_form.dart';
import 'components/signup_title.dart';
import 'controllers/controller.dart';

class SignUpView extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpController(),
      child: Scaffold(
        appBar: signUpAppBar(),
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            SignUpTitle(),
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: SignUpForm(),
            ),
            SignUpConfirmButton(),
            LoginHint()
          ],
        ),
      ),
    );
  }
}
