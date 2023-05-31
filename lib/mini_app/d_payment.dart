import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ivin_screens/mini_app/p_success_text.dart';

class PaymentSection extends StatefulWidget {
  const PaymentSection({Key? key}) : super(key: key);

  @override
  State<PaymentSection> createState() => _PaymentSectionState();
}

class _PaymentSectionState extends State<PaymentSection> {
  int _currentIndex = 2;

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
      Get.offAllNamed('/login');
      // Navigator.pushNamed(context, '/login');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/img/p.png"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Delivery and Payment",style: TextStyle(color: Colors.deepPurpleAccent,fontSize: 45.0,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
            ),
            Text("Enjoy hassle-free payment with the plenitude of payment options available for you. Get live tracking and locate your food on a live map. It's quite a sight to see your food arrive to your door. Plus, you get a 5% discount on every order every time you pay online.",style: TextStyle(color:Colors.blueGrey,fontSize:18),textAlign:TextAlign.center,),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             mainAxisSize:MainAxisSize.max,
             children: [
                 Image.asset("assets/img/p_1.png",width: 60.0,),
                Image.asset("assets/img/p_2.png",width: 60.0,),
               Image.asset("assets/img/p_3.png",width: 60.0,),
               Image.asset("assets/img/p_4.png",width: 60.0,),
             ],
           ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children:[
            Padding(
              padding: const EdgeInsets.only(right: 20.0,),
              child: ElevatedButton(onPressed:(){
               Get.toNamed('/success');
              }, child: Text("Pay Now")),
            ),
            ElevatedButton(onPressed:(){
              Get.back();
            }, child:Text("Back"))
          ],
            ),
            ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_sharp,color: _currentIndex==0? Colors.deepOrange:Colors.grey,), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.restaurant_menu,color: _currentIndex==1? Colors.deepOrange:Colors.grey,), label: "Menu"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet,color: _currentIndex==2? Colors.deepOrange:Colors.grey,), label: "Payment"),
          BottomNavigationBarItem(icon: Icon(Icons.logout,color: _currentIndex==3? Colors.deepOrange:Colors.grey,), label: "Logout"),
        ],
        onTap:(index) =>  onTabPressed(index),
      ),
    );
  }
}
