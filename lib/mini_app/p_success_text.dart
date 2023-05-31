import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentSuccess extends StatelessWidget {
  const PaymentSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text("Payment Success",style: TextStyle(color: Colors.green,fontSize:60,fontWeight: FontWeight.w700),textAlign:TextAlign.center,),
          ),
          ElevatedButton(onPressed: (){
            Get.back();
          }, child: Text("Back"))
        ],
      ),
    );
  }
}
