import 'package:flutter/material.dart';

import '../Colors/Config.dart';

class mIconButton extends StatelessWidget {
  String title;
  var icon;
  Color color;
  mIconButton({required this.title,required this.icon,required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.8,
      padding: EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(30)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(icon,color: Colors.white,),
           Text(title,style: TextStyle(color: Colors.white,letterSpacing: 2),),
        ],
      ),
    );
  }
}
