import "package:flutter/material.dart";
import 'package:karsawan/gallery.dart';
import 'package:karsawan/constant.dart';
import 'package:karsawan/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "Karsawan",
      debugShowCheckedModeBanner: false,
      home: bottomNavBar(),
    );
  }
}

class bottomNavBar extends StatefulWidget{
  @override
  bottomNavBarState createState() => bottomNavBarState();
}
class bottomNavBarState extends State<bottomNavBar>{
int currentTab = 0;

final List<Widget> _children = [
  HomeScreen(),
  Gallery()
];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
    appBar: AppBar(
    title: Text(
    "KARSAWAN",
    style: TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w900,
    fontSize: 29.00,
    ),
    ),
    backgroundColor: kPrimaryColor,
    centerTitle: true,
    ),
     body: _children[currentTab],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            color: Colors.red,
            boxShadow: [BoxShadow(
              color: Colors.black,
              blurRadius: 9.0,
            )]
        ),
        child: BottomNavigationBar(
          currentIndex: currentTab,

          onTap: (int value) {
            setState(() {
              currentTab = value;

            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text("Home"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.picture_in_picture),
              title: Text("Gallery"),
            ),
          ],
          backgroundColor: kPrimaryColor.withOpacity(0.8),
        ),
      ),
    );
  }
}