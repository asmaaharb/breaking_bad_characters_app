import 'package:breakingbad/screens/home/models/model.dart';
import 'package:breakingbad/screens/home/states/controller.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeController extends Cubit<HomeStates> {
  Dio dio = Dio();

  HomeController() : super(HomeInit());

  static HomeController of(context) => BlocProvider.of(context);
  List<HomeModel> charactersList = [];
  Future<List<HomeModel>> getData() async {
    final response = await dio.get('https://breakingbadapi.com/api/characters');

    if (response.statusCode == 200) {
      final app = response.data as List;
      print('getting data');

      app.forEach((element) {
        HomeModel homeModel = HomeModel.fromJson(element);
        charactersList.add(homeModel);
      });

    }
    else {
      throw Exception('Failed to load ');
    }
    emit(HomeInit());

  }

}
