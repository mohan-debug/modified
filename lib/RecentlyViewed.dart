import 'package:flutter/material.dart';

class RecentlyViewed extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<RecentlyViewed> {
  var product_list = [
    //creating a maps  for products
    {
      //adding attributes
      "name": "peaunut butter",
      "picture": "lib/assets/slide_view1.png",
    }
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;

  Single_prod({
    this.prod_name,
    this.prod_picture,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
        child: Hero(
            tag: prod_name,
            child: Material(
              child: InkWell(
                onTap: () {},
                child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                    child: ListTile(
                      leading: Text(prod_name,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ),
                  child: Image.asset(prod_picture, fit: BoxFit.cover),
                ),
              ),
            )));
  }
}
