import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


import 'ott loginpage.dart';
class ott6 extends StatefulWidget {
  const ott6({super.key});

  @override
  State<ott6> createState() => _ott6State();
}

class _ott6State extends State<ott6> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black87,
        body: Column(
            children: [
              SizedBox(height: 25),
              Container(
                  height: 70,
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text("Settings",
                            style: TextStyle(color: Colors.blueGrey,fontSize: 30),),
                          Padding(
                            padding: const EdgeInsets.only(left: 190),
                            child: Icon(Icons.settings),),
                        ],
                      ))),
              SizedBox(height: 25),
              Container(
                  height: 70,
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text("Privacy",
                            style: TextStyle(color: Colors.blueGrey,fontSize: 30),),
                          Padding(
                            padding: const EdgeInsets.only(left: 207),
                            child: Icon(Icons.privacy_tip),),
                        ],
                      ))),
              SizedBox(height: 25,),

              Container(
                  height: 70,
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text(
                            "Help",
                            style: TextStyle(color: Colors.blueGrey,fontSize: 30),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 245),
                            child: Icon(Icons.help),
                          ),
                        ],
                      ))),

              SizedBox(height: 25,),

              Container(
                  height: 70,
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ott1()),
                      );
                    },
                    child: Row(
                      children: [
                        Text("Sign out",
                          style: TextStyle(color: Colors.blueGrey,fontSize: 30),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 192),
                          child: Icon(Icons.person),
                        ),
                      ],
                    ),
                  ))]
        ),

      ),);
  }
}