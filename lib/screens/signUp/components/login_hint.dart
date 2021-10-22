import 'package:breakingbad/screens/logIn/view.dart';
import 'package:flutter/material.dart';

class LoginHint extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all( 60.0),
      child: Row(
        children: [
          Text("already have an account!  ",style: TextStyle(color: Colors.grey,fontSize: 15,),),
          InkWell(
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginView()));},
              child: Text("Login",style: TextStyle(color: Colors.amber,fontSize: 15,fontWeight: FontWeight.bold),)),
        ],
      ),
    );
  }
}
