import 'package:flutter/material.dart';
import 'package:ott/ott%20searchpage.dart';

class ott9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    final double screenHeight = screenSize.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive App'),
      ),
      body: Container(
        width: screenWidth,
        height: screenHeight,
        child: Center(
          child: Text(
            'Responsive Content',
            style: TextStyle(fontSize: screenWidth * 0.05),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ott8(),
  )
  );
}
