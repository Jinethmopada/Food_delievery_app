import 'package:flutter/material.dart';

class MenuSection extends StatefulWidget {
  const MenuSection({Key? key}) : super(key: key);

  @override
  State<MenuSection> createState() => _MenuSectionState();
}

class _MenuSectionState extends State<MenuSection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: Text("Explore Menu"),
      centerTitle: true,
      ),
      backgroundColor: Colors.tealAccent,
      body:SingleChildScrollView(
        scrollDirection:Axis.vertical,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 220,
                height: 220,
                margin: EdgeInsets.only(top:20,left: 10),
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child:
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Image.asset("assets/img/1.png",),
                ),
              ),
                Container(
                  width: 220,
                  height: 220,
                  margin: EdgeInsets.only(top:20,left: 10),
                  decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Image.asset("assets/img/2.png",),
                  ),
                ),
                Container(
                  width: 220,
                  height: 220,
                  margin: EdgeInsets.only(top:20,left: 10),
                  decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Image.asset("assets/img/3.png",),
                  ),
                ),
                  Container(
                    width: 220,
                    height: 220,
                    margin: EdgeInsets.only(top:20,left: 10),
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Image.asset("assets/img/4.png",),
                    ),
                  ),
                  Container(
                    width: 220,
                    height: 220,
                    margin: EdgeInsets.only(top:20,left: 10),
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Image.asset("assets/img/5.png",),
                    ),
                  ),
                  Container(
                    width: 220,
                    height: 220,
                    margin: EdgeInsets.only(top:20,left: 10),
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Image.asset("assets/img/6.png",),
                    ),
                  ),
                  Container(
                    width: 220,
                    height: 220,
                    margin: EdgeInsets.only(top:20,left: 10),
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("assets/img/7.png",),
                    ),
                  ),
                  Container(
                    width: 220,
                    height: 220,
                    margin: EdgeInsets.only(top:20,left: 10),
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("assets/img/8.png",),
                    ),
                  ),
                  Container(
                    width: 220,
                    height: 220,
                    margin: EdgeInsets.only(top:20,left: 10),
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("assets/img/2.png",),
                    ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}

