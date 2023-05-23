import 'package:flutter/material.dart';
import 'package:ivin_screens/mini_app/home_page.dart';

class Logout extends StatelessWidget {
  const Logout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Logout Successful",style: TextStyle(color: Colors.teal,fontSize: 50,fontWeight: FontWeight.w700),textAlign: TextAlign.center,),
          Text("To Log Back Again Click on Login Button"),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context,'/login');
          }, child:Text("Login"))
          ],
        ),
      ),
    );
  }
}
