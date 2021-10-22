
import 'package:breakingbad/screens/signUp/states/controller.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUpController extends Cubit <SignUpStates>{
  SignUpController() : super(SignUpInit());

  static SignUpController of(context)=> BlocProvider.of(context);

  TextEditingController sEmailController = TextEditingController();
  TextEditingController sPasswordController = TextEditingController();

  final formKey = GlobalKey<FormState>();
  Future<String> signUp()async{
    if(!formKey.currentState.validate())
    emit(SignUpLoading());
    final formData = FormData.fromMap({
      'email': sEmailController.text,
      'password': sPasswordController.text
    });
try{
    final response = await Dio().post('https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyAS4k7BZguxcJAAsAqN5bwqCPz2XEGt1jg ',

        data: formData,

    );

    final data = response.data as Map;
    if(data.containsKey('idToken')) {
      String idToken=data['idToken'];
      final prefs = await SharedPreferences.getInstance();
      prefs.setString("idToken", idToken);
      return 'ok';
    }


    else
      return data['error_warning'];
  }catch(e){
  print(e);

}
    emit(SignUpInit());
  }


}