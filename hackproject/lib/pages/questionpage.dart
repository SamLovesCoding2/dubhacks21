import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return MaterialApp(
      title: 'Questionairre',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Question: Here is your question?'),
        ),
        body: const Center(
          child: Text('Choice 1'),
          child: Text('Choice 2'),
          child: Text('Choice 3'),
          child: Text('Choice 4'),
        ),
      ),
    );
  }
}
