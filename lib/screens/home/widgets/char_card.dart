import 'package:breakingbad/const/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard({this.name, this.image});
  final String image;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 2,color: Colors.amber)

      ),
        width:sizeFromWidth(1, context),
        height:sizeFromHeight(1.5, context),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                    image: NetworkImage(image), fit: BoxFit.cover)),
            width:sizeFromWidth(2, context),
            height:sizeFromHeight(2, context)

          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white54.withOpacity(.5),
                  borderRadius: BorderRadius.circular(5)),
                  width:sizeFromWidth(2.5, context),
                  height:sizeFromHeight(10, context),
              child: Center(
                  child: Text(
                name,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )),
            ),
          ),

        ],
      ),
    );
  }
}
