import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class MenuSection extends StatefulWidget {
  const MenuSection({Key? key}) : super(key: key);

  @override
  State<MenuSection> createState() => _MenuSectionState();
}

class _MenuSectionState extends State<MenuSection> {
  int _currentIndex = 1;

  void onTabPressed(index) {
    setState(() {
      _currentIndex = index;
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

  int count_1 = 1;
  int count_2 = 1;
  int count_3 = 1;
  int count_4 = 1;
  int count_5 = 1;
  int count_6 = 1;
  int count_7 = 1;
  int count_8 = 1;

  int amount_1 = 150;
  int amount_2 = 130;
  int amount_3 = 50;
  int amount_4 = 100;
  int amount_5 = 250;
  int amount_6 = 100;
  int amount_7 = 150;
  int amount_8 = 100;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Explore Menu"),
        centerTitle: true,
      ),
      backgroundColor: Colors.tealAccent,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 InkWell(child:
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Column(
                     children: [
                       CircleAvatar(backgroundImage: AssetImage('assets/img/fish_image.jpg'),radius: 53,),
                       Text("Sea Food",style: TextStyle(color: Colors.orange,fontSize: 20,fontWeight:FontWeight.bold),),
                     ],
                   ),
                 ),
                   onTap: (){
                   Get.toNamed('/sea_food');
                   },
                 ),
                  InkWell(child:
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        CircleAvatar(backgroundImage: AssetImage('assets/img/chicken_img.jpg'),radius: 53,),
                        Text("Chicken",style: TextStyle(color: Colors.orange,fontSize: 20,fontWeight:FontWeight.bold),),
                      ],
                    ),
                  ),
                    onTap: (){
                      Get.toNamed('/chicken');
                    },
                  ),
                  InkWell(child:
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        CircleAvatar(backgroundImage: AssetImage('assets/img/mutton_image.jpg'),radius: 53,),
                        Text("Mutton",style: TextStyle(color: Colors.orange,fontSize: 20,fontWeight:FontWeight.bold),),
                      ],
                    ),
                  ),
                    onTap: (){
                      Get.toNamed('/mutton');
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(child:
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        CircleAvatar(backgroundImage: AssetImage('assets/img/dessert_image.jpg'),radius: 53,),
                        Text("Desserts",style: TextStyle(color: Colors.orange,fontSize: 20,fontWeight:FontWeight.bold),),
                      ],
                    ),
                  ),
                    onTap: (){
                      Get.toNamed('/dessert');
                    },
                  ),
                  InkWell(child:
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        CircleAvatar(backgroundImage: AssetImage('assets/img/starter_image.jpg'),radius: 53,),
                        Text("Starters",style: TextStyle(color: Colors.orange,fontSize: 20,fontWeight:FontWeight.bold),),
                      ],
                    ),
                  ),
                    onTap: (){
                      Get.toNamed('/starter');
                    },
                  ),
                  InkWell(child:
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        CircleAvatar(backgroundImage: AssetImage('assets/img/pasta_image.jpg'),radius: 53,),
                        Text("Pasta",style: TextStyle(color: Colors.orange,fontSize: 20,fontWeight:FontWeight.bold),),
                      ],
                    ),
                  ),
                    onTap: (){
                      Get.toNamed('/pasta');
                    },
                  ),
                ],
              ),
              Container(
                width: 250,
                height: 320,
                margin: EdgeInsets.only(top: 20, left: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.lime,
                ),
                child: Column(
                  children: [
                    Text(
                      "Chicken Manchuria",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Image.asset("assets/img/1.png"),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            "Rs.150",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          width: 110,
                          height: 40,
                          margin: EdgeInsets.only(top: 12, left: 70),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                  icon: Icon(
                                    Icons.remove,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      count_1 <= 1 ? count_1 = 1 : count_1--;
                                      Get.showSnackbar(GetSnackBar(
                                        titleText: Text(
                                          "You Added $count_1 Items",
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 20),
                                        ),
                                        messageText: Text("Rs.${amount_1~/count_1}"),
                                        duration: Duration(seconds: 1),
                                        backgroundColor: Colors.greenAccent,
                                      ));
                                    });
                                  }),
                              Text(
                                "$count_1",
                                style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              IconButton(
                                  icon: Icon(
                                    Icons.add,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      count_1++;
                                      Get.showSnackbar(GetSnackBar(
                                          titleText: Text(
                                            "You Added $count_1 Items",
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 20),
                                          ),
                                          messageText:Text(
                                            "Rs.${amount_1 * count_1}",
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 17),
                                          ),
                                          duration: Duration(seconds: 1),
                                          backgroundColor: Colors.greenAccent));
                                    });
                                  }),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: 250,
                height: 320,
                margin: EdgeInsets.only(top: 20, left: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.lime,
                ),
                child: Column(
                  children: [
                    Text(
                      "Paneer Masala",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Image.asset(
                        "assets/img/2.png",
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            "Rs.130",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          width: 110,
                          height: 40,
                          margin: EdgeInsets.only(top: 12, left: 70),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                  icon: Icon(
                                    Icons.remove,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      count_2 <= 1 ? count_2 = 1 : count_2--;
                                      Get.showSnackbar(GetSnackBar(
                                        titleText: Text(
                                          "You Added $count_2 Items",
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 20),
                                        ),
                                        messageText: Text("Rs.${amount_2/count_2}"),
                                        duration: Duration(seconds: 1),
                                        backgroundColor: Colors.greenAccent,
                                      ));
                                    });
                                  }),
                              Text(
                                "$count_2",
                                style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              IconButton(
                                  icon: Icon(
                                    Icons.add,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      count_2++;
                                      Get.showSnackbar(GetSnackBar(
                                          titleText: Text(
                                            "You Added $count_2 Items",
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 20),
                                          ),
                                          messageText: Text(
                                            "Rs.${amount_2 * count_2}",
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 17),
                                          ),
                                          duration: Duration(seconds: 1),
                                          backgroundColor: Colors.greenAccent));
                                    });
                                  }),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: 250,
                height: 320,
                margin: EdgeInsets.only(top: 20, left: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.lime,
                ),
                child: Column(
                  children: [
                    Text(
                      "Chicken Soup",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Image.asset(
                        "assets/img/3.png",
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            "Rs.50",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          width: 110,
                          height: 40,
                          margin: EdgeInsets.only(top: 12, left: 70),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                  icon: Icon(
                                    Icons.remove,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      count_3 <= 1 ? count_3 = 1 : count_3--;
                                      Get.showSnackbar(GetSnackBar(
                                        titleText: Text(
                                          "You Added $count_3 Items",
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 20),
                                        ),
                                        messageText: Text("Rs.${amount_3/count_3}"),
                                        duration: Duration(seconds: 1),
                                        backgroundColor: Colors.greenAccent,
                                      ));
                                    });
                                  }),
                              Text(
                                "$count_3",
                                style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              IconButton(
                                  icon: Icon(
                                    Icons.add,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      count_3++;
                                      Get.showSnackbar(GetSnackBar(
                                          titleText: Text(
                                            "You Added $count_3 Items",
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 20),
                                          ),
                                          messageText: Text(
                                            "Rs.${amount_3 * count_3}",
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 17),
                                          ),
                                          duration: Duration(seconds: 1),
                                          backgroundColor: Colors.greenAccent));
                                    });
                                  }),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: 250,
                height: 320,
                margin: EdgeInsets.only(top: 20, left: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.lime,
                ),
                child: Column(
                  children: [
                    Text(
                      "Fish Fry",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Image.asset(
                        "assets/img/4.png",
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            "Rs.100",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          width: 110,
                          height: 40,
                          margin: EdgeInsets.only(top: 12, left: 70),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                  icon: Icon(
                                    Icons.remove,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      count_4 <= 1 ? count_4 = 1 : count_4--;
                                      Get.showSnackbar(GetSnackBar(
                                        titleText: Text(
                                          "You Added $count_4 Items",
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 20),
                                        ),
                                        messageText: Text("Rs.${amount_4/count_4}"),
                                        duration: Duration(seconds: 1),
                                        backgroundColor: Colors.greenAccent,
                                      ));
                                    });
                                  }),
                              Text(
                                "$count_4",
                                style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              IconButton(
                                  icon: Icon(
                                    Icons.add,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      count_4++;
                                      Get.showSnackbar(GetSnackBar(
                                          titleText: Text(
                                            "You Added $count_4 Items",
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 20),
                                          ),
                                          messageText: Text(
                                            "Rs.${amount_4 * count_4}",
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 17),
                                          ),
                                          duration: Duration(seconds: 1),
                                          backgroundColor: Colors.greenAccent));
                                    });
                                  }),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: 250,
                height: 320,
                margin: EdgeInsets.only(top: 20, left: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.lime,
                ),
                child: Column(
                  children: [
                    Text(
                      "Biryani",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Image.asset(
                        "assets/img/5.png",
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            "Rs.250",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          width: 110,
                          height: 40,
                          margin: EdgeInsets.only(top: 12, left: 70),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                  icon: Icon(
                                    Icons.remove,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      count_5 <= 1 ? count_5 =1 : count_5--;
                                      Get.showSnackbar(GetSnackBar(
                                        titleText: Text(
                                          "You Added $count_5 Items",
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 20),
                                        ),
                                        messageText: Text("Rs.${amount_5/count_5}"),
                                        duration: Duration(seconds: 1),
                                        backgroundColor: Colors.greenAccent,
                                      ));
                                    });
                                  }),
                              Text(
                                "$count_5",
                                style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              IconButton(
                                  icon: Icon(
                                    Icons.add,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      count_5++;
                                      Get.showSnackbar(GetSnackBar(
                                          titleText: Text(
                                            "You Added $count_5 Items",
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 20),
                                          ),
                                          messageText: Text(
                                            "Rs.${amount_5 * count_5}",
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 17),
                                          ),
                                          duration: Duration(seconds: 1),
                                          backgroundColor: Colors.greenAccent));
                                    });
                                  }),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: 250,
                height: 320,
                margin: EdgeInsets.only(top: 20, left: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.lime,
                ),
                child: Column(
                  children: [
                    Text(
                      "Noodles",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Image.asset(
                        "assets/img/6.png",
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            "Rs.100",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          width: 110,
                          height: 40,
                          margin: EdgeInsets.only(top: 12, left: 70),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                  icon: Icon(
                                    Icons.remove,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      count_6 <= 1 ? count_6 = 1 : count_6--;
                                      Get.showSnackbar(GetSnackBar(
                                        titleText: Text(
                                          "You Added $count_6 Items",
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 20),
                                        ),
                                        messageText: Text("Rs.${amount_6/count_6}"),
                                        duration: Duration(seconds: 1),
                                        backgroundColor: Colors.greenAccent,
                                      ));
                                    });
                                  }),
                              Text(
                                "$count_6",
                                style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              IconButton(
                                  icon: Icon(
                                    Icons.add,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      count_6++;
                                      Get.showSnackbar(GetSnackBar(
                                          titleText: Text(
                                            "You Added $count_6 Items",
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 20),
                                          ),
                                          messageText: Text(
                                            "Rs.${amount_6 * count_6}",
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 17),
                                          ),
                                          duration: Duration(seconds: 1),
                                          backgroundColor: Colors.greenAccent));
                                    });
                                  }),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: 250,
                height: 320,
                margin: EdgeInsets.only(top: 20, left: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.lime,
                ),
                child: Column(
                  children: [
                    Text(
                      "Fruit Saalad",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Image.asset(
                        "assets/img/7.png",
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            "Rs.150",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          width: 110,
                          height: 40,
                          margin: EdgeInsets.only(top: 12, left: 70),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                  icon: Icon(
                                    Icons.remove,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      count_7 <= 1 ? count_7 = 1 : count_7--;
                                      Get.showSnackbar(GetSnackBar(
                                        titleText: Text(
                                          "You Added $count_7 Items",
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 20),
                                        ),
                                        messageText: Text("Rs.${amount_7/count_7}"),
                                        duration: Duration(seconds: 1),
                                        backgroundColor: Colors.greenAccent,
                                      ));
                                    });
                                  }),
                              Text(
                                "$count_7",
                                style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              IconButton(
                                  icon: Icon(
                                    Icons.add,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      count_7++;
                                      Get.showSnackbar(GetSnackBar(
                                          titleText: Text(
                                            "You Added $count_7 Items",
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 20),
                                          ),
                                          messageText: Text(
                                            "Rs.${amount_7 * count_7}",
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 17),
                                          ),
                                          duration: Duration(seconds: 1),
                                          backgroundColor: Colors.greenAccent));
                                    });
                                  }),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: 250,
                height: 320,
                margin: EdgeInsets.only(top: 20, left: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.lime,
                ),
                child: Column(
                  children: [
                    Text(
                      "Ice Cream",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Image.asset(
                        "assets/img/8.png",
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            "Rs.100",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          width: 110,
                          height: 40,
                          margin: EdgeInsets.only(top: 12, left: 70),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                  icon: Icon(
                                    Icons.remove,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      count_8 <= 1 ? count_8 = 1 : count_8--;
                                      Get.showSnackbar(GetSnackBar(
                                        titleText: Text(
                                          "You Added $count_8 Items",
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 20),
                                        ),
                                        messageText: Text("Rs.${amount_8/count_8}"),
                                        duration: Duration(seconds: 1),
                                        backgroundColor: Colors.greenAccent,
                                      ));
                                    });
                                  }),
                              Text(
                                "$count_8",
                                style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              IconButton(
                                  icon: Icon(
                                    Icons.add,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      count_8++;
                                      Get.showSnackbar(GetSnackBar(
                                          titleText: Text(
                                            "You Added $count_8 Items",
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 20),
                                          ),
                                          messageText: Text(
                                            "Rs.${amount_8 * count_8}",
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 17),
                                          ),
                                          duration: Duration(seconds: 1),
                                          backgroundColor: Colors.greenAccent));
                                    });
                                  }),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.grey,
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