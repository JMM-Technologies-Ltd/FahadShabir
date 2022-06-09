import 'package:flutter/material.dart';

import '../Colors/Config.dart';

class mIconButton extends StatelessWidget {
  String title;
  String icon;
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
          Container(
            height: 20,
            width: 20,
            child: Image.asset(icon,fit: BoxFit.fill,),
          ),
           Text(title,style: TextStyle(color: Colors.white,letterSpacing: 2),),
        ],
      ),
    );
  }
}
