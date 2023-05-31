import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FollowUsSection extends StatefulWidget {
  const FollowUsSection({Key? key}) : super(key: key);

  @override
  State<FollowUsSection> createState() => _FollowUsSectionState();
}

class _FollowUsSectionState extends State<FollowUsSection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Follow Us"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:10.0),
              child: Text(
                "Follow Us",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 50,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:78.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xffd0b200),
                    child: Icon(
                      Icons.facebook_outlined,
                      color: Colors.white,
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Color(0xffd0b200),
                    child: Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Color(0xffd0b200),
                    child: Icon(
                      Icons.phone,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 400,
              height: 230,
              margin: EdgeInsets.only(top:150),
              color: Color(0xff212529),
              child: Column(
                children: [
                  Image.asset("assets/img/app_logo.png",width: 100.0,),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text("OrderFood@Foody.com",style: TextStyle(color: Colors.white,fontSize: 25),),
                  ),
                  Text("768 Complex Road Visakhapatnam,India.",style: TextStyle(color: Colors.white),),
                ],
              ),
            )
          ],
        ),
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
                        "assets/img/app_logo.png",
                        width: 190,
                      )),
                )),
            ListTile(
              title: Text(
                "Home",
                style: TextStyle(color: Colors.deepOrange, fontSize: 18),
              ),
              leading: Icon(
                Icons.home,
                color: Colors.cyan,
                size: 30,
              ),
              onTap: () {
                Get.toNamed('/home');
              },
            ),
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
                Get.toNamed('/wcu');
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
                Get.toNamed('/explore_menu');
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
                Get.toNamed('/payment');
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
                Get.toNamed('/follow_us');
              },
            ),
            Padding(
                padding: EdgeInsets.only(top: 275),
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
                    Get.offAllNamed('/logout');
                  },
                  autofocus: true,
                )
            ),
          ],
        ),
      ),
    );
  }
}
