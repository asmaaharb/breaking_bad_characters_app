import 'package:breakingbad/screens/home/controllers/controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'components/app_bar.dart';
import 'components/char_list.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeController()..getData(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: homeAppBar(),
        body: CharactersList(),
      ),
    );
  }
}

