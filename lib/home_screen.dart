import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  int currentTab = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "KARSAWAN",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w900,
            fontSize: 25.00,
          ),
        ),
        backgroundColor: Colors.blue[700],
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.blue[800],
            Colors.blue[200],
          ],

        )),
        child: Column(
          children: <Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 17.0),
                child: Container(
                  height: 200.0,
                  width: 300.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 6.0,
                        )
                      ],
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Upcoming Event",
                        style: TextStyle(
                          fontSize: 30.00,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      SizedBox(height: 30.0),
                      Text(
                        " Name: KARSAWAN 4.0",
                        style: TextStyle(
                          fontSize: 14.00,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        "Date: 20/4/2021 - 22/4/2021",
                        style: TextStyle(
                          fontSize: 14.00,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        "Time: 6.00PM - 12.00PM",
                        style: TextStyle(
                          fontSize: 14.00,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
      ),
    );
  }
}
