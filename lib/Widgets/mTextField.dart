import 'package:flutter/material.dart';

class mTextField extends StatelessWidget {
  String hint;
  var controller;
  bool ispass;

   mTextField({required this.hint,required this.controller, required  this.ispass});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      width: MediaQuery.of(context).size.width*0.8,
      decoration: BoxDecoration(
          color: Color(0xffF2F2F2),
          borderRadius: BorderRadius.circular(30)
      ),
      child:  TextField(
        controller: controller,
        obscureText: ispass,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hint,
            hintStyle: TextStyle(color: Colors.grey)
        ),
      ),
    );
  }
}
