import 'package:flutter/material.dart';
import 'pages/mainpage.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return const MaterialApp(
      title: 'AdultHack',
      home: Scaffold(
        backgroundColor: Colors.black,
        body: MainPage(),
      ),
    );
  }
}
