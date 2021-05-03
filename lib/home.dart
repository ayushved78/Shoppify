import 'package:e_comm/components/horizontallist.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:e_comm/components/product.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/c1.jpg'),
          AssetImage('images/IMG_1266.JPG'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/m2.jpg'),
          AssetImage('images/w1.jpeg'),
          AssetImage('images/w3.jpeg'),
          AssetImage('images/w4.jpeg'),
        ],
        autoplay: false,
        dotSize: 4.0,
        dotColor: Colors.white,
        indicatorBgPadding: 5.0,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000,),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text('Shoppify'),
        centerTitle: true,
        actions: [
          new IconButton(icon: Icon(Icons.search), onPressed: (){}),
          new IconButton(icon: Icon(Icons.shopping_cart), onPressed: (){})
        ],
      ),

      drawer: new Drawer(
        child: ListView(
          children: [
            //header
            new UserAccountsDrawerHeader(
                accountName: Text('Ayush'),
                accountEmail: Text('ayush.ved13877@gmail.com'),
                currentAccountPicture: GestureDetector(
                  child: new CircleAvatar(
                    backgroundColor: Colors.black,
                    child: Icon(Icons.person,color: Colors.white,),
                  ),
                ),
              decoration: new BoxDecoration(
                color: Colors.deepOrangeAccent,
              ),
            ),
            //body
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Account'),
                leading: Icon(Icons.person),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Orders'),
                leading: Icon(Icons.shopping_cart),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Cards'),
                leading: Icon(Icons.credit_card),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(Icons.category),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Favourites'),
                leading: Icon(Icons.favorite),
              ),
            ),
            Divider(height: 10.0,),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Sign Out'),
                leading: Icon(Icons.logout),
              ),
            ),
          ],
        ),
      ),
      body: new ListView(
        children: [
          image_carousel,
          new Padding(padding: const EdgeInsets.all(10.0)),
          Text('Categories'),
          HorizontalList(),
          new Padding(padding: EdgeInsets.all(7.0),),
          Text('Recent Products'),
          Container(
            height: 320.0,
            // color: Colors.red,
            child: Products(),
          ),
        ],
      ),
    );
  }
}
