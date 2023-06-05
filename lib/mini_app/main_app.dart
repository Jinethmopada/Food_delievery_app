import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ivin_screens/mini_app/chicken_items.dart';
import 'package:ivin_screens/mini_app/d_payment.dart';
import 'package:ivin_screens/mini_app/dessert_items.dart';
import 'package:ivin_screens/mini_app/explore_menu.dart';
import 'package:ivin_screens/mini_app/follow_us.dart';
import 'package:ivin_screens/mini_app/food_items.dart';
import 'package:ivin_screens/mini_app/home_page.dart';
import 'package:ivin_screens/mini_app/login_page.dart';
import 'package:ivin_screens/mini_app/logout.dart';
import 'package:ivin_screens/mini_app/mutton_items.dart';
import 'package:ivin_screens/mini_app/p_success_text.dart';
import 'package:ivin_screens/mini_app/pasta_items.dart';
import 'package:ivin_screens/mini_app/starter_items.dart';
import 'package:ivin_screens/mini_app/wcu_section.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Named Routes',
      initialRoute: '/login',
      getPages: [
        GetPage(name:'/home', page:() => MyHomePage(),transition: Transition.circularReveal,transitionDuration: Duration(seconds:1)),
        GetPage(name: '/login', page:()=> MyLoginForm(),transition: Transition.zoom,transitionDuration: Duration(seconds: 1)),
        GetPage(name:'/wcu', page:() => WcuSection(),transition:Transition.rightToLeftWithFade,transitionDuration: Duration(seconds: 1)),
        GetPage(name: '/explore_menu', page:()=> MenuSection(),transition: Transition.leftToRightWithFade,transitionDuration: Duration(seconds: 1)),
        GetPage(name:'/follow_us', page:() => FollowUsSection()),
        GetPage(name: '/payment', page:()=> PaymentSection(),transition: Transition.downToUp,transitionDuration: Duration(seconds: 1)),
        GetPage(name:'/sea_food', page:() => FoodItemsScreen()),
        GetPage(name: '/chicken', page:()=>ChickenItemsScreen()),
        GetPage(name: '/mutton', page:()=>MuttonItemsScreen()),
        GetPage(name: '/dessert', page:()=>DessertItemsScreen()),
        GetPage(name: '/starter', page:()=>StarterItemsScreen()),
        GetPage(name: '/pasta', page:()=>PastaItemsScreen()),
        GetPage(name:'/logout', page:() => Logout()),
        GetPage(name: '/success', page:()=> PaymentSuccess(),transition:Transition.circularReveal,transitionDuration: Duration(seconds: 2)),
      ],
      // initialRoute: '/login',
      // routes: {
      //   '/home': (context) => MyHomePage(),
      //   '/wcu': (context) => WcuSection(),
      //   '/explore_menu': (context) => MenuSection(),
      //   '/follow_us': (context) => FollowUsSection(),
      //   '/payment': (context) => PaymentSection(),
      //   '/logout': (context) => Logout(),
      //   '/success': (context) => PaymentSuccess(),
      //   '/login': (context) => MyLoginForm(),
      // },
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: MyHomePage(),
    );
  }
}
