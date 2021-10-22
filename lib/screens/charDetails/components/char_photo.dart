import 'package:breakingbad/const/sizes.dart';
import 'package:flutter/material.dart';
class CharacterPhoto extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage('img'), fit: BoxFit.contain)),
        width: sizeFromWidth(1, context),
        height: sizeFromHeight(
          2,
          context,
        ),
      ),
    );
  }
}
