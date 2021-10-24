import 'package:flutter/material.dart';
import 'pages/mainpage.dart';
import 'package:flutter/services.dart';

/* This is main page for running the application. This is an undone project, but
We want to finish this in the future. We want to use postgreSQL database, and 
AWS lambda serverless service to hold the application. We might also use API
gateway for management.
*/
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
      title: 'GrowNUp',
      home: Scaffold(
        backgroundColor: Colors.black,
        body: MainPage(),
      ),
    );
  }
}
