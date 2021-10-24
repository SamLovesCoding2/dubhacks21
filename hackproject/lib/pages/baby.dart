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
    return SizedBox(
      width: _size.width,
      height: _size.height,
      child: Container(
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
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Center(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(top: 30, bottom: 50),
                    child: const Text(
                      "HOW MUCH OF AN ADULT ARE YOU?",
                      style: TextStyle(color: Color(0xffFFFFFF), fontSize: 30, fontFamily: 'Roboto', fontWeight: FontWeight.bold,),
                    ),
                  ),
                  //make img for baby
                  Container(
                    width: 150,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),                    
                    margin: const EdgeInsets.only(top: 30, bottom: 50),
                    child: const Text(
                      'Baby: Level 1',//$_levelDescript,
                      style: TextStyle(color: Color(0xffFFFFFF), fontSize: 20, fontFamily: 'Roboto'),
                    ),
                  ),
                  Container(
                    width: 150,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(top: 30, bottom: 50),
                    child: const Text(
                      'Get more questions correct to become a well seasoned adult!',
                      style: TextStyle(color: Color(0xffFFFFFF), fontSize: 12, fontFamily: 'Roboto'),
                    ),
                  ),
                ]
              ),

                    
                      
            ),
          ],
        ),
      ),
    );
  }
}