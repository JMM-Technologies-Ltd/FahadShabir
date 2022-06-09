import 'package:fahadshabir/Colors/Config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String deliverTo="current location";

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(width: MediaQuery.of(context).size.width,),

            Container(
              width: MediaQuery.of(context).size.width*0.8,
              alignment: Alignment.centerLeft,
              child: Text("Delivering to",style: TextStyle(color: Colors.grey),),
            ),

            Container(
              width: MediaQuery.of(context).size.width*0.8,
              alignment: Alignment.centerLeft,
              child: DropdownButton(
                value: deliverTo,
                elevation: 0,
                icon: Icon(Icons.keyboard_arrow_down),
                items: [
                  DropdownMenuItem(child: Text("Current Location"),value: "current location",),
                  DropdownMenuItem(child: Text("Address 1"),value: "Address 1",),
                  DropdownMenuItem(child: Text("Address 2"),value: "Address 2",),
                ], onChanged: (value) {
                  deliverTo=value.toString();
                  setState((){});
              },
              ),
            ),

            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width*0.8,
              child: const TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none
                ),
              ),
            ),


          ],
        ),
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
