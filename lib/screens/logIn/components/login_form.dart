import 'package:breakingbad/screens/logIn/controllers/controller.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {

  bool _isVisible= false;
  void updateStatus() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }
  @override
  Widget build(BuildContext context) {
    final controller = LoginController.of(context);
    return Form(
      key: controller.formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                  cursorColor: Colors.amberAccent,
                  validator: (value){
                    if(value.isEmpty) return 'Empty field!';
                    else if(!value.contains('@')) return 'missing @!';
                    else return null;
                  },
                  controller: controller.emailController,
                  decoration: InputDecoration(
                    focusedBorder:
                    UnderlineInputBorder(borderSide: BorderSide(color: Colors.amberAccent)),

                    hintText: 'Email',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),)
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                  cursorColor: Colors.amberAccent,
                  obscureText: _isVisible ? false : true,
                  validator: (value){
                    if(value.isEmpty) return 'Empty field!';
                    else if(value.length < 4) return 'Length';
                    else return null;
                  },
                  controller: controller.passwordController,

                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      color:  _isVisible ? Colors.amber: Colors.grey,
                      onPressed: () => updateStatus(),
                      icon: Icon(
                          _isVisible ? Icons.visibility : Icons.visibility_off),
                    ),
                    hintText: 'Password',
                    focusedBorder:
                    UnderlineInputBorder(borderSide: BorderSide(color: Colors.amberAccent)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),)

              ),
            ),
          ],
        ),
      ),
    );
  }
}
