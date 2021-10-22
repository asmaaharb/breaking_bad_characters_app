import 'package:breakingbad/screens/charDetails/veiw.dart';
import 'package:breakingbad/screens/home/controllers/controller.dart';
import 'package:breakingbad/screens/home/states/controller.dart';
import 'package:breakingbad/screens/home/widgets/char_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'more_details_button.dart';

class CharactersList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = HomeController.of(context);
    return BlocBuilder(
      bloc: controller,
      builder: (context, state) => state is HomeLoading
          ? CircularProgressIndicator()
          : ListView.builder(
              itemCount: controller.charactersList.length,
              itemBuilder: (BuildContext context, int index) {
                final char = controller.charactersList[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      CharacterCard(
                        name: char.name,
                        image: char.img,
                      ),
                      InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder:(context)=>CharactersDetailsView(
                              img: char.img,
                              name: char.name,
                              birthday: char.birthday,
                              nickname: char.nickname,
                              portrayed: char.portrayed,
                              status: char.status,
                            )));
                          },
                          child: MoreDetailsButton()),
                    ],
                  ),
                );
              }),
    );
  }
}
