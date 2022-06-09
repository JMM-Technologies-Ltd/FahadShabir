import 'package:flutter/material.dart';

import '../Colors/Config.dart';

class mButton extends StatelessWidget {
  String title;
  mButton({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.8,
      padding: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
          color: Config.mainColor,
          borderRadius: BorderRadius.circular(30)
      ),
      child: Center(child: Text(title,style: TextStyle(color: Colors.white),),),
    );
  }
}
