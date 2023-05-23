import 'package:flutter/material.dart';
import 'package:ivin_screens/mini_app/d_payment.dart';
import 'package:ivin_screens/mini_app/explore_menu.dart';
import 'package:ivin_screens/mini_app/follow_us.dart';
import 'package:ivin_screens/mini_app/logout.dart';
import 'package:ivin_screens/mini_app/wcu_section.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("Swiggy"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            child: Image.asset(
              "assets/img/chapati.jpg",
            ),
          ),
          const Text(
            "Get Delicious Food Anytime",
            style: TextStyle(
                color: Colors.pink, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const Text(
            "Eat Smart & Healthy",
            style: TextStyle(
                color: Colors.green, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: ElevatedButton(
              onPressed: () {
               Navigator.pushNamed(context, '/explore_menu');
              },
              child: Text("Order Now"),
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                child: Container(
              color: Colors.deepOrange,
              padding: const EdgeInsets.all(0),
              child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Image.asset(
                    "assets/img/Swiggy-logo.png",
                    width: 190,
                  )),
            )),
            ListTile(
              title: Text(
                "Why Choose Us",
                style: TextStyle(color: Colors.deepOrange, fontSize: 18),
              ),
              leading: Icon(
                Icons.person_search_outlined,
                color: Colors.cyan,
                size: 30,
              ),
              onTap: () {
                Navigator.pushNamed(context,'/wcu');
              },
            ),
            ListTile(
              title: Text("Explore Menu",
                  style: TextStyle(color: Colors.deepOrange, fontSize: 18)),
              leading: Icon(
                Icons.menu_book_rounded,
                color: Colors.cyan,
                size: 30,
              ),
              onTap: () {
                Navigator.pushNamed(context,'/explore_menu');
              },
            ),
            ListTile(
              title: Text("Delivery & Payment",
                  style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 18,
                  )),
              leading: Icon(
                Icons.wallet_rounded,
                color: Colors.cyan,
                size: 30,
              ),
              onTap: () {
                Navigator.pushNamed(context,'/payment');
              },
            ),
            ListTile(
              title: Text("Follow Us",
                  style: TextStyle(color: Colors.deepOrange, fontSize: 18)),
              leading: Icon(
                Icons.facebook_outlined,
                color: Colors.cyan,
                size: 30,
              ),
              onTap: () {
               Navigator.pushNamed(context,'/follow_us');
              },
            ),
            Padding(
                padding: EdgeInsets.only(top: 320),
                child: ListTile(
                  title: Text(
                    "Logout",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  leading: Icon(
                    Icons.login_outlined,
                    size: 32,
                    color: Colors.red,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/logout');
                  },
                  autofocus: true,
                )),
          ],
        ),
      ),
    );
  }
}
