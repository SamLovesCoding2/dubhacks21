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
    return Scaffold(
      body: SizedBox(
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
                child: Column(children: [
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(top: 30),
                    child: const Center(
                      child: Text(
                        "HOW MUCH OF AN\nADULT ARE YOU?",
                        style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 30,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: _size.width / 4 * 3,
                    margin: const EdgeInsets.only(top: 5),
                    child: Image.asset('assets/Baby_2.png'),
                  ),
                  Container(
                    width: 300,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.only(top: 5, right: 10, left: 10),
                    margin: const EdgeInsets.only(top: 5, bottom: 10),
                    child: const Text(
                      'Baby: Level 1', //$_levelDescript,
                      style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 30,
                          fontFamily: 'Roboto'),
                    ),
                  ),
                  Center(
                    child: Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(top: 10, bottom: 50),
                      child: const Text(
                        'Get more questions correct to\nbecome a well-seasoned adult!',
                        style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 20,
                            fontFamily: 'Roboto'),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      child: Row(
                        children: [
                          Container(
                            width: _size.width / 3,
                            padding: const EdgeInsets.only(
                                top: 5, bottom: 5, left: 10, right: 10),
                            child: Image.asset('assets/Baby_2.png'),
                          ),
                          Container(
                            width: _size.width / 3,
                            padding: const EdgeInsets.only(
                                top: 5, bottom: 5, left: 10, right: 10),
                            child: Image.asset('assets/blankchild.png'),
                          ),
                          Container(
                            width: _size.width / 3,
                            padding: const EdgeInsets.only(
                                top: 5, bottom: 5, left: 10, right: 10),
                            child: Image.asset('assets/blankteenager.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          width: _size.width / 3,
                          child: Image.asset('assets/blankadult.png'),
                        ),
                        Container(
                          width: _size.width / 3,
                          child: Image.asset('assets/blankold.png'),
                        ),
                        Container(
                          width: _size.width / 3,
                          child: Image.asset('assets/blankoldest.png'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: _size.width / 10 * 9,
                    child: Image.asset('assets/progressbar1.png'),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(top: 10, bottom: 50),
                    child: const Text(
                      '16% complete',
                      style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 13,
                          fontFamily: 'Roboto'),
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
