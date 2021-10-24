import 'package:flutter/material.dart';

class Baby extends StatefulWidget {
  const Baby({Key? key}) : super(key: key);

  @override
  _BabyState createState() => _BabyState();
}

class _BabyState extends State<Baby> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Center(
      child: Container(
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
          color: Color(0xF19494),
        ),
      ),
    );
  }
}
