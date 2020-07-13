import 'package:Reviewdoor/Comparisons.dart';
import 'package:Reviewdoor/Offers.dart';
import 'package:Reviewdoor/RecentlyViewed.dart';
import 'package:Reviewdoor/horizontallist_view.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: HomePage(),
));

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
  Widget imageCarousel = new Container(
    height: 80.0,
    child: Carousel(
     boxFit: BoxFit.cover,
     images: [
      AssetImage('lib/assets/slide_view1.png'),
      AssetImage('lib/assets/The-Diet-Plan(slide_view3).png'),
      AssetImage('lib/assets/fitness-workout(slideview2).png'),
      AssetImage('lib/assets/carousel.jpg'),
      AssetImage('lib/assets/brand_5.png')
     ],
     autoplay: false,
     animationCurve: Curves.fastOutSlowIn,
     animationDuration: Duration(milliseconds: 1000),

    ),
  );


  return Scaffold(
    appBar: new AppBar(
      elevation: 0.1,
      backgroundColor: Colors.red,
      title: Center(
        child: Image.asset(
          'lib/assets/companylogo.png',
         fit: BoxFit.cover
      ),),
      actions: <Widget>[
        new IconButton(
          icon: Icon(
            Icons.search,
             color: Colors.blue,
             ), onPressed: (){}
             ),
        new IconButton(
          icon: Icon(
            Icons.shopping_cart,
             color: Colors.blue,
             ), onPressed: (){}
             ),


      ],
    ),
    drawer: new Drawer(
      child: new ListView(
        children: <Widget>[
          //header
          new UserAccountsDrawerHeader(
            accountName: Text(' hi mohan'),
            accountEmail: Text('example@gmail.com'),
            currentAccountPicture: GestureDetector(
              child: new CircleAvatar(
                backgroundColor: Colors.black38,
                child: Icon(Icons.person,
                 color: Colors.white),
                ),
            ),
            decoration: new BoxDecoration(
              color: Colors.red,
            ),
            ),
          //body

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Home'),
              leading: Icon(
                Icons.home,
                color:Colors.red),
            ),
          ),

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Account'),
              leading: Icon(
                Icons.account_circle,
                color: Colors.blueAccent),
            ),
          ),

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('category'),
              leading: Icon(
              Icons.category,
              color: Colors.green),
            ),
          ),

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Brands'),
              leading: Icon(
                Icons.branding_watermark,
                color: Colors.redAccent),
            ),
          ),

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Blogs'),
              leading: Icon(
                Icons.assistant,
                color: Colors.deepPurple),
            ),
          ),

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Know Your Supplements'),
              leading: Icon(
                Icons.settings_input_component,
                color: Colors.lightGreen),
            ),
          ),

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Chat with us'),
              leading: Icon(
                Icons.chat_bubble_outline,
                color: Colors.orangeAccent),
            ),
          ),

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Contact'),
              leading: Icon(
              Icons.contacts,
              color: Colors.lightBlue),
            ),
          ),

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('About'),
              leading: Icon(
                Icons.help,
                color: Colors.red),
            ),
          ),

        ],
      )
    ),


    body: new ListView(
     children: <Widget>[
       imageCarousel,
       //Padding Widget
       new Padding(padding: const EdgeInsets.all(15.0),
       child: new Text('Hi, what are you looking for ?'),
       ),
// horizontal list view begins here

        HorizontalList(),

        new Padding(padding: const EdgeInsets.all(20.0),
       child: new Text('Recently Viewed'),
       ),

       // Grid view
       Container(
         height: 300.0,
         child: RecentlyViewed(),
       ),

       //Comparisons

       new Padding(padding: const EdgeInsets.all(20.0),
       child: new Text('Comparisons'),
       ),

      // Grid View

        Container(
         height: 350.0,
         child: Comparisons(),
       ),

       new Padding(padding: const EdgeInsets.all(20.0),
       child: new Text('offers'),
       ),

       //Grid view
       Container(
         height:400.0,
         child: Offers(),
       ),
     ],
    ),
    );
  }
}

