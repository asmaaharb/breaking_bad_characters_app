import 'package:breakingbad/const/sizes.dart';
import 'package:breakingbad/screens/charDetails/widgets/details_row.dart';
import 'package:flutter/material.dart';
import 'components/details_app_bar.dart';

class CharactersDetailsView extends StatelessWidget {
  String name;
  String img;
  String birthday;
  String status;
  String nickname;
  String portrayed;
  CharactersDetailsView({this.img, this.nickname, this.birthday, this.status, this.portrayed, this.name});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: detailsAppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: sizeFromWidth(1, context),
              height: sizeFromHeight(2,context,),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(img), fit: BoxFit.contain)),

            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Container(
              child: Column(
                children: [
                  DetailsRow(catName: "Name", data: name,),
                  DetailsRow(catName: "Nickname", data: nickname,),
                  DetailsRow(catName: "Birthday", data: birthday,),
                  DetailsRow(catName: "Status", data: status,),
                  DetailsRow(catName: "Portrayed", data: portrayed,),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
