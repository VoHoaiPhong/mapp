import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'tab1.dart';
import 'tab2.dart';
import 'tab3.dart';

//Define "root widget"
// void main() => runApp(new Home());//one-line function

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //build function returns a "Widget"
    final tabController = new DefaultTabController(
        length: 3,
        child: new Scaffold(
          appBar: new AppBar(
            title: new Text("Quản lý toà nhà"),
            bottom: new TabBar(
                indicatorColor: Colors.white,
                indicatorWeight: 2.0,
                tabs: [
                  new Tab(icon: new Icon(Icons.home),text: "Trang chủ"),
                  new Tab(icon: new Icon(Icons.code),text: "QR Code"),
                  new Tab(icon: new Icon(Icons.account_circle), text: "Thông tin",)
            ]),
          ),
          drawer: Drawer(
          child: ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                accountName: new Text("Vo Hoai Phong"),
                accountEmail: new Text("phong.vo.ctv@mobifone.vn"),
                currentAccountPicture: new CircleAvatar(
                  backgroundColor: Theme.of(context).platform == TargetPlatform.iOS ?Colors.deepPurple : Colors.white,
                  child: new Text("P"),
                ),
                otherAccountsPictures: <Widget>[
                  new CircleAvatar(
                    backgroundColor: Colors.white,
                    child: new Text("K"),
                  )
                ],
              ),
              ListTile(
                title: Text("Trang chủ"),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).popAndPushNamed("/a");
                },
              ),
              ListTile(
                title: Text("Thông tin"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              new Divider(),
              ListTile(
                title: Text("Đăng xuất"),
                trailing: new Icon(Icons.arrow_drop_down),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text("Đóng"),
                trailing: new Icon(Icons.close),
                onTap: () {
                  // Navigator.of(context).pop();
                  Scaffold.of(context).openEndDrawer();
                },
              )
            ],
          ),
        ),
          body: new TabBarView(
              children: [
                new Tab1(),
                new Tab2(),
                new Tab3()
              ]
          ),
        ),
    );
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(primarySwatch: Colors.blue,
      primaryColor: defaultTargetPlatform == TargetPlatform.iOS ? Colors.grey[50] : null
      ),
      title: "Tabs example",
      home: tabController,
      routes: <String, WidgetBuilder>{
        "/a": (BuildContext context) => new Tab1(),
      }
    );
  }
}
