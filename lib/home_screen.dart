import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import "package:flutter/material.dart";
import 'package:karsawan/constant.dart';
import 'package:karsawan/gallery.dart';
import 'package:url_launcher/url_launcher.dart';


class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  int currentTab = 0;
  final List<Widget> _children = [
    Gallery()
  ];

  Future<void> _launched;
  String phoneNumber = "";
  String _launchUrl = "https://www.google.com";

  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceSafariVC: false, forceWebView: false,
        headers: <String, String>{'header_key': 'header_value'},);
    }
    else {
      throw 'could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery
            .of(context)
            .size
            .height,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.12),
        ),
        child: Column(
          children: <Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 17.0),
                child: Stack(
                    children: <Widget>[ Container(
                      height: 200.0,
                      width: 300.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xFFB0CCE1).withOpacity(0.32),
                                offset: Offset(0, 4),
                                blurRadius: 20)
                          ],
                          borderRadius: BorderRadius.circular(20.0)),

                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              "UPCOMING EVENT",
                              style: TextStyle(
                                fontSize: 30.00,
                                fontWeight: FontWeight.w900,
                              ),
                            ),

                            SizedBox(height: 5.0),
                            Text(
                              "Name: KARSAWAN 4.0                ",
                              style: TextStyle(
                                fontSize: 14.00,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              "Date: 20/4/2021                            ",
                              style: TextStyle(
                                fontSize: 14.00,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              "Time: 6.00PM - 12.00PM             ",
                              style: TextStyle(
                                fontSize: 14.00,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              "Venue: Medan Kolej, UiTM KJM",
                              style: TextStyle(
                                fontSize: 14.00,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                  children: [TextSpan(
                                      text: "If you interested, you can register ",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w600,
                                      )
                                  )
                                  ]
                              ),
                            ),
                            RaisedButton(
                              child: const Text('Here'),
                              onPressed: (){
                               _launchInBrowser(_launchUrl) ;
                              },
                            )
                          ],
                        ),
                      ),
                    ),
                    ]),
              ),
            ),
            Divider(
              color: Colors.black,
              height: 20.0,
            ),
            Expanded(
              child: Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                decoration: BoxDecoration(
                  color: kPrimaryColor.withOpacity(0.9),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0, 4),
                      blurRadius: 30.0,
                    )
                  ],
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 20.00),
                    Text(
                      "PREVIOUS EVENT",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize: 30.00,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Column(
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Container(
                              margin:
                              EdgeInsets.fromLTRB(90.0, 5.0, 20.0, 5.0),
                              width: 250,
                              height: 200,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black,
                                      offset: Offset(0, 4),
                                      blurRadius: 9.0,
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(20.0)),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 20.0, left: 80.0),
                                child: Column(
                                  children: <Widget>[
                                    Text("KARSAWAN 3.0", style: TextStyle(
                                      fontSize: 15.00,
                                      fontWeight: FontWeight.w900,
                                    ),),
                                    Text("Year: 2019         \n\n"
                                        "1st: Netcentric\n"
                                        "2nd: Planters\n"
                                        "3rd: Arecs",
                                      style: TextStyle(
                                        fontSize: 15.00,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],

                                ),
                              ),
                            ),
                            Positioned(
                              top: 15.0,
                              left: 40.00,
                              bottom: 15.00,
                              child: Container(
                                height: 100,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0xFFB0CCE1)
                                            .withOpacity(0.7),
                                        offset: Offset(0, 4),
                                        blurRadius: 20.0,
                                      )
                                    ],
                                    borderRadius:
                                    BorderRadius.circular(15.0)),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15.00),
                                  child: Image(
                                    width: 150,
                                    height: 100,
                                    image: AssetImage(
                                        "assets/images/Karsawan3.0.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Container(
                              margin:
                              EdgeInsets.fromLTRB(90.0, 5.0, 20.0, 5.0),
                              width: 250,
                              height: 200,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black,
                                      offset: Offset(0, 4),
                                      blurRadius: 9.0,
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(20.0)),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 20.0, left: 80.0),
                                child: Column(
                                  children: <Widget>[
                                    Text("KARSAWAN 2.0",
                                      style: TextStyle(
                                        fontSize: 15.00,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                    Text("Year: 2018          \n\n"
                                        "1st: SMF FSKM\n"
                                        "2nd: Planters\n"
                                        "3rd: Netcentric",
                                      style: TextStyle(
                                        fontSize: 15.00,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],

                                ),
                              ),
                            ),
                            Positioned(
                              top: 15.0,
                              left: 40.00,
                              bottom: 15.00,
                              child: Container(
                                height: 100,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0xFFB0CCE1)
                                            .withOpacity(0.7),
                                        offset: Offset(0, 4),
                                        blurRadius: 20.0,
                                      )
                                    ],
                                    borderRadius:
                                    BorderRadius.circular(15.0)),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15.00),
                                  child: Image(
                                    width: 150,
                                    height: 100,
                                    image: AssetImage(
                                        "assets/images/Karsawan2.0.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}