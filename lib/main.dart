import 'package:data_fetching_from_rest_api_in_flutter/pages/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //var _currentindex = 0;

  // final pages = [
  //   HomePage(),
  //   RadioPage(),
  //   BusinessPage(),
  //   SettingPage(),
  // ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: const Text('Data Loading From Rest API')),
          backgroundColor: Colors.red,
        ),
        //body: pages[_currentindex],
        body: HomePage(),
      ),
    );
  }
}
