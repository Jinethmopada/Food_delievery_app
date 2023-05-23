import 'package:flutter/material.dart';

class WcuSection extends StatefulWidget {
  const WcuSection({Key? key}) : super(key: key);

  @override
  State<WcuSection> createState() => _WcuSectionState();
}

class _WcuSectionState extends State<WcuSection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(title: Text("Why Choose Section"),
      centerTitle: true,
      ),
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Text("Why Choose Us?",style: TextStyle(color: Colors.yellowAccent,fontSize:30,fontWeight: FontWeight.bold),),
          ),
          Text("We use both original recipes and classic versions of famous food items.",style: TextStyle(color: Colors.black,fontSize: 18,),textAlign: TextAlign.center,),

          Container(
            width: 220,
            height: 220,
            margin: EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:8.0),
                  child: Image.asset("assets/img/a.png",width: 60,),
                ),
                Text("Food Service",style:TextStyle(color: Colors.black87,fontSize: 20,fontWeight: FontWeight.bold),),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Experience fine dining at the comfort of your home. All our orders are carefully packed and arranged to give you the nothing less than perfect.",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),textAlign:TextAlign.center,),
                ),
              ],
            ),
          ),
          Container(
            width: 220,
            height: 220,
            margin: EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:8.0),
                  child: Image.asset("assets/img/b.png",width: 60,),
                ),
                Text("Fresh Food",style:TextStyle(color: Colors.black87,fontSize: 20,fontWeight: FontWeight.bold),),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("The Fresh Food group provides fresh-cut fruits and vegetables directly picked from our partner farms and farm houses so that you always get them tree to plate.",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),textAlign:TextAlign.center,),
                ),
              ],
            ),
          ),
          Container(
            width: 220,
            height: 220,
            margin: EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:8.0),
                  child: Image.asset("assets/img/c.png",width: 60,),
                ),
                Text("Best Offers",style:TextStyle(color: Colors.black87,fontSize: 20,fontWeight: FontWeight.bold),),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Food Coupons & Offers upto 50% OFF and Exclusive Promo Codes on All Online Food Orders.",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),textAlign:TextAlign.center,),
                ),
              ],
            ),
          ),
        ],
      ),
    )
    );
  }
}
