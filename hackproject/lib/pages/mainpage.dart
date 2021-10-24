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
    return Center(
      child: Column(
        children: [
          Container(child: Text("")),
          Container(
            width: _size.width,
            height: _size.height,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                    color: Colors.black,
                    offset: Offset(0, -10),
                    blurRadius: 20,
                    spreadRadius: 0)
              ],
              color: Color(0xffD37373),
            ),
          ),
          // Container(
          //   alignment: Alignment.center,
          //   child: TextButton(onPressed: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) => null,
          //       ),
          //     );
          //   }, child: Container(child: Text(),),)
          // )
        ],
      ),
    );
  }
}
