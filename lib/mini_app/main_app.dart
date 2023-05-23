import 'package:flutter/material.dart';
import 'package:ivin_screens/mini_app/d_payment.dart';
import 'package:ivin_screens/mini_app/explore_menu.dart';
import 'package:ivin_screens/mini_app/follow_us.dart';
import 'package:ivin_screens/mini_app/home_page.dart';
import 'package:ivin_screens/mini_app/login_page.dart';
import 'package:ivin_screens/mini_app/logout.dart';
import 'package:ivin_screens/mini_app/p_success_text.dart';
import 'package:ivin_screens/mini_app/wcu_section.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Named Routes',
      initialRoute: '/login',
      routes: {
        '/home': (context) => MyHomePage(),
        '/wcu': (context) => WcuSection(),
        '/explore_menu': (context) => MenuSection(),
        '/follow_us': (context) => FollowUsSection(),
        '/payment': (context) => PaymentSection(),
        '/logout': (context) => Logout(),
        '/success': (context) => PaymentSuccess(),
        '/login': (context) => MyLoginForm(),
      },
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: MyHomePage(),
    );
  }
}
