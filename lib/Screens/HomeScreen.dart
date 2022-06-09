import 'package:fahadshabir/Colors/Config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Good morning Akila !"),
        elevation: 0,
        actions: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: IconButton(
              splashRadius: 20.0,
              onPressed: (){},
              icon: Icon(CupertinoIcons.cart_fill),
            ),
          )
        ],
      ),
      bottomNavigationBar:BottomNavigationBar(
        selectedItemColor:Config.mainColor,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        unselectedLabelStyle: TextStyle(color: Colors.grey),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag),
              label: "Offers"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.window),
              label: "Menu"
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "profile"
          ),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.increase_indent),
              label: "More"
          ),
        ],
      ),
    );
  }
}
