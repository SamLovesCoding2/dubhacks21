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
  _WheelState w = new _WheelState();
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
                      "GrowNUp",
                      style: TextStyle(color: Color(0xffFFFFFF), fontSize: 40),
                    ),
                  ),
                  const Wheel(),
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
  int index = -1;
  // ignore close_sinks
  final StreamController _dividerController = StreamController<int>();
  // ignore close_sinks
  final StreamController _wheelNotifier = StreamController<double>();
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 600,
      child: Center(
        child: Scaffold(
          backgroundColor: const Color(0xffD37373),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AbsorbPointer(
                absorbing: true,
                child: SpinningWheel(
                  Image.asset('assets/spinner.png'),
                  width: 350,
                  height: 350,
                  initialSpinAngle: _randomAngle(),
                  canInteractWhileSpinning: false,
                  shouldStartOrStop: _wheelNotifier.stream,
                  spinResistance: 0.2,
                  dividers: 10,
                  onEnd: _dividerController.add,
                  onUpdate: _dividerController.add,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: StreamBuilder(
                  stream: _dividerController.stream,
                  builder: (c, s) {
                    index = int.parse(s.data.toString());
                    return s.hasData
                        ? DisplayResult(int.parse(s.data.toString()))
                        : Container();
                  },
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 100, bottom: 30),
                child: MaterialButton(
                  onPressed: () => _wheelNotifier.sink.add(_randomVelocity()),
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
                      style: TextStyle(color: Color(0xffFFFFFF), fontSize: 15),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DisplayResult extends StatelessWidget {
  final int selected;
  DisplayResult(this.selected, {Key? key}) : super(key: key);
  final Map<int, String> labels = {
    1: 'Money',
    2: 'Cook',
    3: 'Misc.',
    4: 'Car Care',
    5: 'Sustainability',
    6: 'Self-care',
    7: 'First-aid',
    8: 'friends',
    9: 'insurance',
    10: 'career',
  };

  @override
  Widget build(BuildContext context) {
    return Text(
      '${labels[selected]}',
      style: const TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
    );
  }
}
