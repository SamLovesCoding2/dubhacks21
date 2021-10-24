import 'package:flutter/material.dart';
import 'package:hackproject/pages/baby.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
                      "THE TITLE",
                      style: TextStyle(color: Color(0xffFFFFFF), fontSize: 40),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(top: 30, bottom: 50),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Baby(),
                          ),
                        );
                      },
                      child: Container(
                        width: 150,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(30),
                          ),
                          border: Border.all(
                            color: const Color(0xffFFFFFF),
                            width: 2,
                          ),
                          boxShadow: const [
                            BoxShadow(
                                color: Color(0xffFFFFFF),
                                offset: Offset(0, 3),
                                blurRadius: 5,
                                spreadRadius: 0)
                          ],
                          color: const Color(0xffF3CFCF),
                        ),
                        child: const Text(
                          "Go",
                          style:
                              TextStyle(color: Color(0xffFFFFFF), fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Baby(),
                          ),
                        );
                      },
                      child: Container(
                        width: 150,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(30),
                          ),
                          border: Border.all(
                            color: const Color(0xffFFFFFF),
                            width: 2,
                          ),
                          boxShadow: const [
                            BoxShadow(
                                color: Color(0xffFFFFFF),
                                offset: Offset(0, 3),
                                blurRadius: 5,
                                spreadRadius: 0)
                          ],
                          color: const Color(0xffF3CFCF),
                        ),
                        child: const Text(
                          "Progress",
                          style:
                              TextStyle(color: Color(0xffFFFFFF), fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
