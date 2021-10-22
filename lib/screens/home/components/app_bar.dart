
import 'package:flutter/material.dart';

homeAppBar() => AppBar(
  backgroundColor: Colors.amber.withOpacity(.6),
  elevation: 0,
  title: Text('BreakingBad',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
  centerTitle: true,
  leading: Icon(Icons.arrow_back,color: Colors.amber.withOpacity(.1),),
);