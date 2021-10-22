


import 'package:flutter/material.dart';
BuildContext context;
detailsAppBar() => AppBar(
  backgroundColor: Colors.amber.withOpacity(.6),
  elevation: 0,

  title: Text("Character Details",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
  centerTitle: true,
  leading: InkWell(
      onTap: (){Navigator.pop(context);},
      child: Icon(Icons.arrow_back,color: Colors.white,)),
);