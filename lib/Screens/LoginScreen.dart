import 'package:fahadshabir/Widgets/mTextField.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final txtEmail=TextEditingController();
  final txtPass=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Login"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: Text("Add your details to Login",style: TextStyle(color: Colors.grey),),
            ),
            const SizedBox(height: 30,),
            mTextField(hint: "Email", controller: txtEmail, ispass: false),
            const SizedBox(height: 20,),
            mTextField(hint: "Password", controller: txtPass, ispass: true),
          ],
        ),
      ),
    );
  }
}
