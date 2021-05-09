import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
          child: Image.asset(
            'images/logo.png',
            scale: 0.5,
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Column(
            children: [
              Text(
                'สวัสดีจ้าาา ติดต่อลุงได้ที่..',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                'ช่องยูทูป "Uncle Engineer"',
                style: TextStyle(fontSize: 50, fontFamily: 'Whale'),
              )
            ],
          ),
        )
      ],
    );
  }
}
