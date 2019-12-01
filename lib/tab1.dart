import 'package:flutter/material.dart';
class Tab1 extends StatelessWidget {
  // final String title;
  Tab1();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // appBar: new AppBar(
      //   title: new Text(title),
      // ),
      body: new Center(
        child: new Text(
        "This is Home Tab",
        style: new TextStyle(fontSize: 25.0, fontFamily: 'Pacifico'),
      ),
      ),
    );
  }
}