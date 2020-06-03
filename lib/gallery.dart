import "package:flutter/material.dart";
import 'package:karsawan/constant.dart';

List<ImageDetails> _images = [
  ImageDetails(imagePath: 'assets/images/a.JPG'),
  ImageDetails(imagePath: 'assets/images/b.jpg'),
  ImageDetails(imagePath: 'assets/images/c.JPG'),
  ImageDetails(imagePath: 'assets/images/d.jpg'),
  ImageDetails(imagePath: 'assets/images/e.jpg'),
  ImageDetails(imagePath: 'assets/images/f.jpg'),
  ImageDetails(imagePath: 'assets/images/g.jpg'),
  ImageDetails(imagePath: 'assets/images/h.jpg'),
  ImageDetails(imagePath: 'assets/images/i.jpg'),
  ImageDetails(imagePath: 'assets/images/j.jpg'),
  ImageDetails(imagePath: 'assets/images/k.JPG'),
  ImageDetails(imagePath: 'assets/images/l.JPG'),
  ImageDetails(imagePath: 'assets/images/m.JPG'),
  ImageDetails(imagePath: 'assets/images/n.JPG'),
  ImageDetails(imagePath: 'assets/images/o.JPG'),
  ImageDetails(imagePath: 'assets/images/p.JPG'),
  ImageDetails(imagePath: 'assets/images/q.JPG'),
  ImageDetails(imagePath: 'assets/images/r.JPG'),
  ImageDetails(imagePath: 'assets/images/s.JPG'),
  ImageDetails(imagePath: 'assets/images/t.JPG'),
  ImageDetails(imagePath: 'assets/images/u.JPG'),
  ImageDetails(imagePath: 'assets/images/v.JPG'),
  ImageDetails(imagePath: 'assets/images/w.JPG')
];

class Gallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 40.0,
            ),
            Text(
              "GALLERY",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w900,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40.0,
            ),
            Expanded(
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(60))),
                  child: GridView.builder(
                      gridDelegate: (SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,)), itemBuilder: (context,index) {
                        return RawMaterialButton(
                          onPressed: (){},
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                image:  DecorationImage(
                                  image: AssetImage(_images[index].imagePath),
                                  fit: BoxFit.cover,
                                )
                              ),
                            ),
                        );
                  },
                    itemCount: _images.length,
              ),
            )
            )]
        ),
      ),
    );
  }
}

class ImageDetails {
  final String imagePath;

  ImageDetails({@required this.imagePath});
}
