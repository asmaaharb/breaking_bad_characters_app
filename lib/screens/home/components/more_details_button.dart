import 'package:breakingbad/const/sizes.dart';
import 'package:flutter/material.dart';

class MoreDetailsButton extends StatelessWidget {
MoreDetailsButton();

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width:sizeFromWidth(2.5, context),
        height:sizeFromHeight(14, context),
        decoration: BoxDecoration(
          border: Border.all(width: 2,color: Colors.amber),
          //  color: Colors.black12.withOpacity(.5),
            borderRadius: BorderRadius.circular(5)),

        child: Center(child: Text("More Details",style: TextStyle(color: Colors.black,fontSize: 20,),)),
      ),
    );
  }
}
