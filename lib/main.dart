import 'package:flutter/material.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body:Center(
          child: Column(
          children:[
            Container(
              margin: EdgeInsets.fromLTRB(20,20,0,0),
            child:Align(alignment: Alignment.topLeft,
          child:
            Image.asset('assets/img/first.png'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top:220),
            child:Align(alignment: Alignment.center,
              child:
              Image.asset('assets/img/second.png'),
            ),
          ),
            Container(
              margin:EdgeInsets.fromLTRB(0,200,20,0),
              child:Align(alignment: Alignment.bottomRight,
                child:
                Image.asset('assets/img/third.png'),
              ),
            ),
        ],
        )
        ),
      ),
    );
  }
}