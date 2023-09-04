import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _loveCounter = 0;
  int _selectedIndex = 0;

  void _incrementLoveCounter() {
    setState(() {
      _loveCounter++;
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome Guys'),
        backgroundColor: Color(0xffb277cb),
      ),
      body: Center(
        child: _selectedIndex == 0
            ? Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Berapa kali kamu mencintai seseorang:',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              '$_loveCounter',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
          ],
        )
            : Text(
          'Placeholder for Page $_selectedIndex',
          style: TextStyle(fontSize: 12),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementLoveCounter,
        child: Icon(Icons.add),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        backgroundColor: Color(0xffb277cb),
      ),
    );
  }
}