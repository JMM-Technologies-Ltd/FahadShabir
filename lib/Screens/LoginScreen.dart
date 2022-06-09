import 'package:fahadshabir/Colors/Config.dart';
import 'package:fahadshabir/Screens/FindFoodScreen.dart';
import 'package:fahadshabir/Screens/HomeScreen.dart';
import 'package:fahadshabir/Widgets/mButton.dart';
import 'package:fahadshabir/Widgets/mIconButton.dart';
import 'package:fahadshabir/Widgets/mTextField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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

            const SizedBox(height: 20,),
            InkWell(
              onTap: (){
                Get.offAll(()=>FindFood());
              },
                child: mButton(title: "Login",)
            ),
            const SizedBox(height: 20,),
            Container(
              alignment: Alignment.center,
              child: Text("Forgot your password?",style: TextStyle(color: Colors.grey),),
            ),

            const SizedBox(height: 30,),
            Container(
              alignment: Alignment.center,
              child: Text("or Login with",style: TextStyle(color: Colors.grey),),
            ),
            const SizedBox(height: 20,),
            mIconButton(color: Config.fbColor,title: "Login with facebook",icon: "assets/f.png",),
            const SizedBox(height: 20,),
            mIconButton(color: Config.googleColor,title: "Login with Google",icon: "assets/g.png",),
            const SizedBox(height: 30,),
            Container(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?",style: TextStyle(color: Colors.grey),),
                  Text("Signup",style: TextStyle(color: Config.mainColor,fontWeight: FontWeight.bold),),
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}
