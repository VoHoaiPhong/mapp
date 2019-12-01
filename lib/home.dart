import 'package:flutter/material.dart';
// import 'package:qr_flutter/qr_flutter.dart';

// import 'package:qrscan/qrscan.dart' as scanner;

// String cameraScanResult = await scanner.scan();

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static const String _title = 'Quản lý toà nhà';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Trang chủ',
      style: optionStyle,
    ),
    Text(
      'Index 1: QR Code',
      style: optionStyle,
    ),
    Text(
      'Index 2: Thông tin',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quản lý toà nhà'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Trang chủ'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.code),
            title: Text('QR Code'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('Thông tin'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[1200],
        onTap: _onItemTapped,
      ),
    );
  }
}
