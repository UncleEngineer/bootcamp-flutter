import 'package:flutter/material.dart';
import 'package:tasklist/pages/first.dart';
import 'package:tasklist/pages/second.dart';
import 'package:tasklist/pages/third.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectindex = 0;
  final tabs = [FirstPage(), SecondPage(), ThirdPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('แอพบันทึกค่าใช้จ่าย'),
        centerTitle: true,
      ),
      body: tabs[selectindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectindex,
        onTap: (index) {
          print("Tab: $index");
          setState(() {
            selectindex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.note_add), label: 'รายการทั้งหมด'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'เพิ่มรายการ'),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_mail), label: 'ติดต่อเรา'),
        ],
      ),
    );
  }
}
