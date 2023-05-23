import 'package:flutter/material.dart';

class FollowUsSection extends StatefulWidget {
  const FollowUsSection({Key? key}) : super(key: key);

  @override
  State<FollowUsSection> createState() => _FollowUsSectionState();
}

class _FollowUsSectionState extends State<FollowUsSection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Follow Us"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Follow Us",
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 50,
                  fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: Color(0xffd0b200),
                  child: Icon(
                    Icons.facebook_outlined,
                    color: Colors.white,
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Color(0xffd0b200),
                  child: Icon(
                    Icons.email,
                    color: Colors.white,
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Color(0xffd0b200),
                  child: Icon(
                    Icons.phone,
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
