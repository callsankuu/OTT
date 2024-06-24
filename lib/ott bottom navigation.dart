import 'package:flutter/material.dart';
import 'ott homepage.dart';
import 'ott profilepage.dart';
import 'ott searchpage.dart';

class ott7 extends StatefulWidget {
  const ott7({super.key});

  @override
  State<ott7> createState() => _ott7State();
}

class _ott7State extends State<ott7> {
  int ottnew = 0;

  final pages = [
    ott2(),
    ott8(),
    ott5(),
  ];

  void tap (index)
  {
    setState(() {
      ottnew = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[ottnew],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blueGrey,
          items:[
            BottomNavigationBarItem(icon: Icon(Icons.home),label:"Home" ),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "Person"),
          ],
        currentIndex: ottnew,
        onTap: tap,
      ),
    );
  }
}
