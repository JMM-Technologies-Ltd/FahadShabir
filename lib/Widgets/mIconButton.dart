import 'package:flutter/material.dart';

import '../Colors/Config.dart';

class mIconButton extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.8,
      padding: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
          color: Config.mainColor,
          borderRadius: BorderRadius.circular(30)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.facebook),
           Text("Login",style: TextStyle(color: Colors.white),),
        ],
      ),
    );
  }
}
