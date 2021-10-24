import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_spinning_wheel/flutter_spinning_wheel.dart';
import 'package:hackproject/pages/baby.dart';
import 'package:hackproject/pages/questions.dart';

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
                    margin: const EdgeInsets.only(bottom: 30),
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
                          "SPIN!",
                          style:
                              TextStyle(color: Color(0xffFFFFFF), fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(bottom: 30),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MiscQuestion(),
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

class Wheel extends StatefulWidget {
  const Wheel({Key? key}) : super(key: key);

  @override
  _WheelState createState() => _WheelState();
}

class _WheelState extends State<Wheel> {
  double _randomAngle() => Random().nextDouble() * pi * 2;
  double _randomVelocity() => (Random().nextDouble() * 6000) + 2000;

  final StreamController _dividerController = StreamController<int>();
  final StreamController _wheelNotifier = StreamController<double>();
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 500,
      alignment: Alignment.center,
      child: Scaffold(
        body: Column(
          children: [
            SpinningWheel(
              Image.asset('assets/spinner.png'),
              width: 500,
              height: 500,
              initialSpinAngle: _randomAngle(),
              canInteractWhileSpinning: false,
              shouldStartOrStop: _wheelNotifier.stream,
              spinResistance: 0.2,
              dividers: 10,
              onEnd: _dividerController.add,
              onUpdate: _dividerController.add,
            ),
            // StreamBuilder(
            //     stream: _dividerController.stream,
            //     builder: (c, s) {
            //       return s.hasData ? DisplayResult(s.data) : Container();
            //     })
          ],
        ),
      ),
    );
  }
}

class DisplayResult extends StatelessWidget {
  const DisplayResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
