import 'package:flutter/material.dart';
import 'package:mapp/home.dart';

// void main()=>runApp(Login());

class Login extends StatefulWidget {
  @override 
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
          constraints: BoxConstraints.expand(),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 40.0),
                child: Container(
                  width: 70.0,
                  height: 70.0,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xffd8d8d8)
                  ),
                  child: FlutterLogo(),
                  ),
              ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 60.0),
                  child: Text("Hello\nWelcom Back", style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 30
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 20.0),
                  child: TextField(
                    style: TextStyle(fontSize: 18, color: Colors.black),
                    decoration: InputDecoration(
                      labelText: "USERNAME",
                      labelStyle: TextStyle(color: Color(0xff888888), fontSize: 15)
                    )
                  ),
                ),
                Stack(
                  alignment: AlignmentDirectional.centerEnd,
                  children: <Widget>[
                    Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 20.0),
                    child: TextField(
                      style: TextStyle(fontSize: 18, color: Colors.black),
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "PASSWORD",
                        labelStyle: TextStyle(color: Color(0xff888888), fontSize: 15)
                      )
                    ),
                  ),
                  Text("Show", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 13),)
                  ], 
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 56,
                    child: RaisedButton(
                      color: Colors.blue,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
                      onPressed: onSignInClicked, child: Text("SIGN IN", style: TextStyle(color: Colors.white, fontSize: 18),),
                      ),
                  ),
                ),
                Container(
                    height: 130.0,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: <Widget>[
                         Text("New User? SIGN UP", style: TextStyle(fontSize: 15, color: Colors.blue),),
                         Text("Forgot Password?", style: TextStyle(fontSize: 15, color: Colors.blue),)
                       ],
                    ),
                  )
            ],
          ),
        ),
      ),
    );
  }

void onSignInClicked() {
  Navigator.of(context)
                .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
              return new Home();
            }));
}

}