import 'package:flutter/material.dart';
import 'package:ivin_screens/mini_app/p_success_text.dart';

class PaymentSection extends StatefulWidget {
  const PaymentSection({Key? key}) : super(key: key);

  @override
  State<PaymentSection> createState() => _PaymentSectionState();
}

class _PaymentSectionState extends State<PaymentSection> {
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
               Navigator.pushNamed(context,'/success');
              }, child: Text("Pay Now")),
            ),
            ElevatedButton(onPressed:(){
              Navigator.pop(context);
            }, child:Text("Back"))
          ],
            ),
            ],
        ),
      ),
    );
  }
}
