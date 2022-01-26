import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'package:sankofa_school/screens/main.dart';
import 'package:sankofa_school/screens/mainscreens/numbersoverview.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:audioplayers/audioplayers.dart';

class ThirdJson extends StatelessWidget {
  // accept the langname as a parameter

  String thirdtopicname;
  late String thirdassettoload;

  ThirdJson(this.thirdtopicname);

  setsecondasset() {
    if (thirdtopicname == "Zahlen") {
      thirdassettoload = "assets/learning/numbers.json";
    }
  }

  @override
  Widget build(BuildContext context) {
    // this function is called before the build so that
    // the string assettoload is avialable to the DefaultAssetBuilder
    setsecondasset();
    // and now we return the FutureBuilder to load and decode JSON
    return FutureBuilder(
      future: DefaultAssetBundle.of(context)
          .loadString(thirdassettoload, cache: false),
      builder: (context, snapshot) {
        List secondmydata = json.decode(snapshot.data.toString());
        if (secondmydata == null) {
          return Scaffold(
            body: Row(
              children: [
                BackButton(),
                Center(
                  child: Text(
                    "Lädt...",
                  ),
                ),
              ],
            ),
          );
        } else {
          return quizpage(mydata: secondmydata);
        }
      },
    );
  }
}

class quizpage extends StatefulWidget {
  final List mydata;

  quizpage({
    required this.mydata,
  });

  @override
  _quizpageState createState() => _quizpageState(mydata);
}

class _quizpageState extends State<quizpage> {
  final List mydata;

  _quizpageState(this.mydata);

  Color colortoshow = Color.fromRGBO(255, 116, 112, 1);
  int marks = 0;
  int i = 1;
  bool disableAnswer = false;

  // extra varibale to iterate
  int j = 1;

  var random_array;

  Map<String, Color> btncolor = {
    "a": Color.fromRGBO(250, 139, 134, 1),
    "b": Color.fromRGBO(255, 171, 147, 1),
  };

  genrandomarray() {
    var distinctIds = [];
    var rand = new Random();
    for (int i = 0;;) {
      distinctIds.add(rand.nextInt(41) + 1);
      random_array = distinctIds.toSet().toList();
      if (random_array.length < 41) {
        continue;
      } else {
        break;
      }
    }
    print(random_array);
  }

  @override
  void initState() {
    genrandomarray();
    super.initState();
    changeOpacityFirst();
    player.play(mydata[1][i.toString()]);
  }

  @override
  void setState(fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  void repeataudio() {
    setState(() {
      player.play(mydata[1][i.toString()]);
    });
  }

  void buttonfunctionality(String k) {
    Timer(Duration(seconds: 2), repeataudio);
  }

  Widget choicebutton1(String k) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 20.0,
      ),
      child: MaterialButton(
        onPressed: () => buttonfunctionality(k),
        child: Text(
          "Wiederholen",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFFF3F2F8),
            fontFamily: "Roboto",
            fontSize: 16.0,
          ),
          maxLines: 1,
        ),
        color: btncolor[k],
        splashColor: Color.fromRGBO(250, 139, 134, 1),
        highlightColor: Color.fromRGBO(255, 171, 147, 1),
        minWidth: 200.0,
        height: 45.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      ),
    );
  }

  void buttonfunctionality2(String k) {
    Timer(Duration(seconds: 0), nextquestion);
  }

  final player = AudioCache();

  Widget choicebutton2(String k) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 20.0,
      ),
      child: MaterialButton(
        onPressed: () => buttonfunctionality2(k),
        child: Text(
          "Weiter",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFFF3F2F8),
            fontFamily: "Roboto",
            fontSize: 16.0,
          ),
          maxLines: 1,
        ),
        color: btncolor[k],
        splashColor: Color.fromRGBO(250, 139, 134, 1),
        highlightColor: Color.fromRGBO(255, 171, 147, 1),
        minWidth: 200.0,
        height: 45.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    );
  }

  void nextquestion() {
    setState(() {
      if (j < 20) {
        i = random_array[j];
        j++;
        opacity1 = 0.0;
        player.play(mydata[1][i.toString()]);
        changeOpacitySecond();
      } else {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => HomePage(),
        ));
      }
    });
  }

  double opacity1 = 0.0;

  changeOpacityFirst() {
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        opacity1 = opacity1 == 0.0 ? 1.0 : 1.0;
        opacity1 = opacity1 == 0.0 ? 0.0 : 1.0;
      });
    });
  }

  changeOpacitySecond() {
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        opacity1 = opacity1 == 1.0 ? 1.0 : 1.0;
      });
    });
  }

  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 64.0, 8.0, 8.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BackButton(
                  onPressed: () {
                    Navigator.pushNamed(context, HomePage.id);
                  },
                ),
                SizedBox(width: 40),
                FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, NumbersOverview.id);
                  },
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(7.5, 7.5, 0, 0),
                        child: Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              colors: [
                                Color.fromRGBO(108, 127, 227, 1),
                                Color.fromRGBO(104, 118, 226, 1),
                                Color.fromRGBO(97, 105, 222, 1),
                                Color.fromRGBO(92, 96, 222, 1),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1.5, color: Colors.black),
                            shape: BoxShape.circle,
                            color: Colors.transparent),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomCenter,
                child: Stack(
                  children: [
                    AnimatedOpacity(
                      opacity: opacity1,
                      duration: Duration(seconds: 1),
                      child: Center(
                        child: Text(
                          mydata[0][i.toString()],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 48.0,
                            fontFamily: "Circular",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: AbsorbPointer(
                absorbing: disableAnswer,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      choicebutton1('a'),
                      choicebutton2('b'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
