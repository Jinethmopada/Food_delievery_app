import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
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
  int _currentIndex = 0;

  void onTabPressed(index) {
    setState(() {
      _currentIndex = index;
      print(_currentIndex);
    });
    if (index == 0) {
      // Navigator.pushNamed(context, '/home');
      Get.offNamed('/home');
    } else if (index == 1) {
      // Navigator.pushNamed(context, '/explore_menu');
      Get.offNamed('/explore_menu');
    } else if (index == 2) {
      Get.offNamed('/payment');
      // Navigator.pushNamed(context, '/payment');
    } else {
      setState(() {
        Get.dialog(AlertDialog(
          title: Text(
            "Alert",
          ),
          content: Text("Are you sure you want to logout"),
          actions: [
            TextButton(
                onPressed: () {
                  Get.back();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Cancel"),
                    InkWell(
                      child: Text("Logout"),
                      onTap: () {
                        Get.offAllNamed('/login');
                      },
                    )
                  ],
                ))
          ],
        ));
      });
      // Get.offAllNamed('/login');
      // Navigator.pushNamed(context, '/login');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("Foody App"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: Image.asset(
                "assets/img/chapati.jpg",
              ),
            ),
            const Text(
              "Get Delicious Food Anytime",
              style: TextStyle(
                  color: Colors.pink,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              "Eat Smart & Healthy",
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: ElevatedButton(
                onPressed: () {
                  // Navigator.pushNamed(context, '/explore_menu');
                  Get.toNamed('/explore_menu');
                },
                child: Text("Order Now"),
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
                    width: 150,
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
                padding: EdgeInsets.only(top: 330),
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
                    setState(() {
                      Get.dialog(AlertDialog(
                        title: Text(
                          "Alert",
                        ),
                        content: Text("Are you sure you want to logout"),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Get.offAllNamed('/logout');
                              },
                              child: Text("Logout"))
                        ],
                      ));
                    });
                  },
                )),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_sharp,
                color: _currentIndex == 0 ? Colors.deepOrange : Colors.grey,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.restaurant_menu,
                color: _currentIndex == 1 ? Colors.deepOrange : Colors.grey,
              ),
              label: "Menu"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_balance_wallet,
                color: _currentIndex == 2 ? Colors.deepOrange : Colors.grey,
              ),
              label: "Payment"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.logout,
                color: _currentIndex == 3 ? Colors.deepOrange : Colors.grey,
              ),
              label: "Logout"),
        ],
        onTap: (index) => onTabPressed(index),
      ),
    );
  }
}
