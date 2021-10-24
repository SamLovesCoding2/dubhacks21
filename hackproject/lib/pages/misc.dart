import 'package:flutter/material.dart';
import 'package:hackproject/pages/baby.dart';

class MiscQuestion extends StatefulWidget {
  const MiscQuestion({Key? key}) : super(key: key);

  @override
  _MiscQuestionState createState() => _MiscQuestionState();
}

class _MiscQuestionState extends State<MiscQuestion> {
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
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(top: 30, bottom: 50),
                      child: const Text(
                        "Miscellaneous",
                        style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Center(
                      child: Container(
                        margin: const EdgeInsets.only(top: 30, bottom: 50),
                        child: const Center(
                          child: Text(
                            "Which national elections \n should you vote in?",
                            style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(top: 20, bottom: 20),
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
                          width: 170,
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
                            color: const Color(0xffD0CFF3),
                          ),
                          child: const Text(
                            "Presidential",
                            style: TextStyle(
                                color: Color(0xffFFFFFF), fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(top: 20, bottom: 20),
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
                          width: 170,
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
                            color: const Color(0xffD0F3CF),
                          ),
                          child: const Text(
                            "Congressional",
                            style: TextStyle(
                                color: Color(0xffFFFFFF), fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(top: 20, bottom: 20),
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
                          width: 170,
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
                            color: const Color(0xffF3EDCF),
                          ),
                          child: const Text(
                            "Both",
                            style: TextStyle(
                                color: Color(0xffFFFFFF), fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(top: 20, bottom: 20),
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
                          width: 170,
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
                            color: const Color(0xffF3CFEB),
                          ),
                          child: const Text(
                            "Neither",
                            style: TextStyle(
                                color: Color(0xffFFFFFF), fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(top: 50, bottom: 20),
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
                          width: 130,
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
                            color: const Color(0xffF3CFCF),
                          ),
                          child: const Text(
                            "Submit",
                            style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Roboto'),
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
      ),
    );
  }
}
