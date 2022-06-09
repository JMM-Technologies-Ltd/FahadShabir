import 'package:fahadshabir/Colors/Config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
              width: MediaQuery.of(context).size.width*0.9,
              alignment: Alignment.centerLeft,
              child: Text("Delivering to",style: TextStyle(color: Colors.grey),),
            ),

            Container(
              width: MediaQuery.of(context).size.width*0.95,
              alignment: Alignment.centerLeft,
              child: DropdownButton(
                value: deliverTo,
                elevation: 0,
                icon: Icon(Icons.keyboard_arrow_down,color: Config.mainColor,),
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
            SizedBox(height: 20,),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width*0.8,
              child: const TextField(
                decoration: InputDecoration(
                    hintText: "Search food",
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none
                ),
              ),
            ),
            SizedBox(height: 30,),
            Container(
              height: 150,
              child:ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder:(context,index){
                  return Padding(
                    padding:EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/burger.png"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                        SizedBox(height: 20,),
                        Text("Offer",style: TextStyle(fontWeight: FontWeight.bold),),
                      ],
                    ),
                  );
                } ,
              ) ,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Popular Restaurants",style: TextStyle(fontSize: 20,),),
                        Text("view all",style: TextStyle(fontSize: 20,color: Config.mainColor),),

                      ],
                    ),
                  ),
                  PopularRestaurants(),



          ],
        ),
      ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Most Popular",style: TextStyle(fontSize: 20,),),
                        Text("view all",style: TextStyle(fontSize: 20,color: Config.mainColor),),

                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  MostPopular(),



                ],
              ),
            ),
      ]
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
  Widget PopularRestaurants() {
    return Container(
      height: 820,
      child: ListView.builder(
         physics: NeverScrollableScrollPhysics(),
          itemCount: 3,
          itemBuilder: (context, index) {
            return Column(
                children: [
                  SizedBox(height: 30,),
                  Container(
                    height: 200,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    child: Image.asset("assets/pizza.png", fit: BoxFit.cover,),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    alignment: Alignment.centerLeft,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    child: Text("Minute by tuk tuk", style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18),),
                  ),
                  Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    alignment: Alignment.centerLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.star, color: Config.mainColor,),
                        Text("(124 ratings) cafe",
                          style: TextStyle(color: Colors.grey),),
                        Icon(Icons.circle, color: Config.mainColor, size: 5,),
                        Text("Western food",
                          style: TextStyle(color: Colors.grey),),
                      ],
                    ),
                  )
                ]
            );
          }
      ),
    );
  }

  Widget MostPopular()
  {
    return Container(
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context,index){
            return Container(
              width: 200,
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                  children: [
                    SizedBox(height: 30,),
                    Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage("assets/pizza.png"),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      alignment:Alignment.centerLeft,
                      width: MediaQuery.of(context).size.width,
                      child: Text("Minute by tuk tuk",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      alignment: Alignment.centerLeft ,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [

                          Text("cafe",style: TextStyle(color: Colors.grey),),
                          Icon(Icons.circle,color: Config.mainColor,size: 5,),
                          Text("Western food",style: TextStyle(color: Colors.grey),),
                          Icon(Icons.star,color: Config.mainColor,),
                          Text("124",style: TextStyle(color: Colors.grey),),
                        ],
                      ),
                    )
                  ]
              ),
            );
          }
      ),
    );
  }
}
