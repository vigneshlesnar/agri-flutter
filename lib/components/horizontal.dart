import 'package:flutter/material.dart';

class Horizontal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/1.jpg',
            image_caption: 'Seeds',),
          Category(
            image_location: 'images/2.jpg',
            image_caption: 'Seeds',),
          Category(
            image_location: 'images/a.jpg',
            image_caption: 'Seeds',),
          Category(
            image_location: 'images/1.jpg',
            image_caption: 'Seeds',),
          Category(
            image_location: 'images/1.jpg',
            image_caption: 'Seeds',),
          Category(
            image_location: 'images/1.jpg',
            image_caption: 'Seeds',),


        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({
    this.image_location,
    this.image_caption,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: InkWell(
        child: Container(
          width: 80.0,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 40.0,
              height: 40.0,
            ),
            subtitle: Container(

              child: Text(image_caption),
              alignment: Alignment.topCenter,
            ),
          ),
        ),
      ),
    );
  }
}
