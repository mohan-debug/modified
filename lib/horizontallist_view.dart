import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(image_location: 'lib/assets/wellness.jpg',
          image_caption:'wellness'
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_caption;
  final String image_location;

  Category({
    this.image_caption,
    this.image_location,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(2.0),
        child: InkWell(
          onTap: () {},
          child: Container(
            width:100.0,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 250.0,
              height:150,
              ),
            subtitle: Container(
              alignment: Alignment.center,
              child: Text(image_caption),
            ),
          ),
          ),
        ));
  }
}
