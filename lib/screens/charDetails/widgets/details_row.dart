import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class DetailsRow extends StatelessWidget {
  const DetailsRow({ this.catName, this.data});
final String catName;
final String data;



  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            height: 30,
            width: MediaQuery.of(context).size.width/2,

            decoration: BoxDecoration(
                border: Border.all(width: 2,color: Colors.amber.withOpacity(.2)),

            ),

            child: Center(child: Text(catName,style: TextStyle(color: Colors.black,fontSize: 15),))),

        Container(
            height: 30,
            width: MediaQuery.of(context).size.width/2,
            decoration: BoxDecoration(
              border: Border.all(width: 2,color: Colors.amber.withOpacity(.2))
            ),

            child: Center(child: Text(data,style: TextStyle(color: Colors.black,fontSize: 15),))),
      ],
    );

  }
}
