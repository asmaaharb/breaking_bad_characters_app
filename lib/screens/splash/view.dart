import 'dart:async';
import 'package:breakingbad/screens/home/view.dart';
import 'package:breakingbad/screens/logIn/view.dart';
import 'package:breakingbad/screens/signUp/view.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class SplashScreen extends StatefulWidget {


  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  Future<void> getData()async{
    final prefs = await SharedPreferences.getInstance();
    final idToken = prefs.getString('idToken');


    Timer(Duration(seconds: 3), (){
      if (idToken == null) Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpView()));
      else Navigator.push(context, MaterialPageRoute(builder: (context) => HomeView()));

    });
   }
  @override
  void initState() {
    getData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://i.pinimg.com/originals/df/d8/86/dfd88602c480ceb7860caf12fd7149b3.jpg"),
        fit:BoxFit.cover ,  )
        ),
      ),
    );
  }
}
