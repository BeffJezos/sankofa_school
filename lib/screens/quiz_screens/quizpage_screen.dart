import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'results_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'quizhome_screen.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:sankofa_school/screens/quiz_screens/results_screen.dart';

class Getjson extends StatelessWidget {
  // accept the langname as a parameter

  String langname;
  late String assettoload;

  Getjson(this.langname);

  // a function
  // sets the asset to a particular JSON file
  // and opens the JSON
  setasset() {
    if (langname == "Alle Themen") {
      assettoload = "assets/quiz_inhalte/komplettesquiz.json";
    } else if (langname == "Begrüßungen") {
      assettoload = "assets/quiz_inhalte/grußquiz.json";
    } else if (langname == "Einkaufen") {
      assettoload = "assets/quiz_inhalte/einkaufsquiz.json";
    } else if (langname == "Farben") {
      assettoload = "assets/quiz_inhalte/farbenquiz.json";
    } else if (langname == "Fragewörter") {
      assettoload = "assets/quiz_inhalte/fragerichtung.json";
    } else if (langname == "Konversation") {
      assettoload = "assets/quiz_inhalte/konversationsquiz.json";
    } else if (langname == "Lebensmittel") {
      assettoload = "assets/quiz_inhalte/lebensmittelquiz.json";
    } else if (langname == "Richtungen") {
      assettoload = "assets/quiz_inhalte/richtungsangabenquiz.json";
    } else if (langname == "Tiere") {
      assettoload = "assets/quiz_inhalte/tierequiz.json";
    } else if (langname == "Über mich") {
      assettoload = "assets/quiz_inhalte/aboutmequiz.json";
    } else if (langname == "Wegweisung") {
      assettoload = "assets/quiz_inhalte/wegweisungsquiz.json";
    } else if (langname == "Wochentage") {
      assettoload = "assets/quiz_inhalte/wochentagequiz.json";
    } else if (langname == "Zahlen") {
      assettoload = "assets/quiz_inhalte/zahlenquiz.json";
    } else if (langname == "Zeitangaben") {
      assettoload = "assets/quiz_inhalte/zeitangabenquiz.json";
    }
  }

  @override
  Widget build(BuildContext context) {
    // this function is called before the build so that
    // the string assettoload is avialable to the DefaultAssetBuilder
    setasset();
    // and now we return the FutureBuilder to load and decode JSON
    return FutureBuilder(
      future:
          DefaultAssetBundle.of(context).loadString(assettoload, cache: false),
      builder: (context, snapshot) {
        List mydata = json.decode(snapshot.data.toString());
        if (mydata == null) {
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
          return quizpage(mydata: mydata);
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
  Color right = Colors.green;
  Color wrong = Colors.red;
  int marks = 0;
  int i = 1;
  bool disableAnswer = false;

  // extra varibale to iterate
  int j = 1;
  int timer = 30;
  String showtimer = "30";
  var random_array;

  Map<String, Color> btncolor = {
    "a": Color.fromRGBO(250, 139, 134, 1),
    "b": Color.fromRGBO(255, 171, 147, 1),
  };

  bool canceltimer = false;

  // code inserted for choosing questions randomly
  // to create the array elements randomly use the dart:math module
  // -----     CODE TO GENERATE ARRAY RANDOMLY

  genrandomarray() {
    var distinctIds = [];
    var rand = new Random();
    for (int i = 0;;) {
      distinctIds.add(rand.nextInt(15) + 1);
      random_array = distinctIds.toSet().toList();
      if (random_array.length < 15) {
        continue;
      } else {
        break;
      }
    }
    print(random_array);
  }

  //   var random_array;
  //   var distinctIds = [];
  //   var rand = new Random();
  //     for (int i = 0; ;) {
  //     distinctIds.add(rand.nextInt(10));
  //       random_array = distinctIds.toSet().toList();
  //       if(random_array.length < 10){
  //         continue;
  //       }else{
  //         break;
  //       }
  //     }
  //   print(random_array);

  // ----- END OF CODE
  // var random_array = [1, 6, 7, 2, 4, 10, 8, 3, 9, 5];

  // overriding the initstate function to start timer as this screen is created
  @override
  void initState() {
    starttimer();
    genrandomarray();
    super.initState();
    player.play(mydata[3][i.toString()]);
  }

  final player = AudioCache();

  // overriding the setstate function to be called only if mounted
  @override
  void setState(fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  void starttimer() async {
    const onesec = Duration(seconds: 1);
    Timer.periodic(onesec, (Timer t) {
      setState(() {
        if (timer < 1) {
          t.cancel();
          nextquestion();
        } else if (canceltimer == true) {
          t.cancel();
        } else {
          timer = timer - 1;
        }
        showtimer = timer.toString();
      });
    });
  }

  void nextquestion() {
    canceltimer = false;
    timer = 30;
    setState(
      () {
        if (j < 15) {
          i = random_array[j];
          j++;
        } else {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => Resultpage(marks: marks),
          ));
        }
        btncolor["a"] = Color.fromRGBO(250, 139, 134, 1);
        btncolor["b"] = Color.fromRGBO(255, 171, 147, 1);
        disableAnswer = false;
      },
    );
    starttimer();
    player.play(
      mydata[3][i.toString()],
    );
  }

  void checkanswer(String k) {
    // in the previous version this was
    // mydata[2]["1"] == mydata[1]["1"][k]
    // which i forgot to change
    // so nake sure that this is now corrected
    if (mydata[2][i.toString()] == mydata[1][i.toString()][k]) {
      // just a print sattement to check the correct working
      // debugPrint(mydata[2][i.toString()] + " is equal to " + mydata[1][i.toString()][k]);
      marks = marks + 5;
      // changing the color variable to be green
      colortoshow = right;
    } else {
      // just a print sattement to check the correct working
      // debugPrint(mydata[2]["1"] + " is equal to " + mydata[1]["1"][k]);
      colortoshow = wrong;
    }
    setState(() {
      // applying the changed color to the particular button that was selected
      btncolor[k] = colortoshow;
      canceltimer = true;
      disableAnswer = true;
    });
    // nextquestion();
    // changed timer duration to 1 second
    Timer(Duration(seconds: 2), nextquestion);
  }

  Widget choicebutton(String k) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 20.0,
      ),
      child: MaterialButton(
        onPressed: () => checkanswer(k),
        child: Text(
          mydata[1][i.toString()][k],
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

  Future<bool> redirectTo() async {
    Navigator.of(context).pop(true);
    return true;
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    return WillPopScope(
      onWillPop: redirectTo,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 64.0, 8.0, 8.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  BackButton(),
                ],
              ),
              Expanded(
                flex: 3,
                child: Container(
                  padding: EdgeInsets.all(15.0),
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    mydata[0][i.toString()],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 32.0,
                      fontFamily: "Roboto",
                    ),
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
                        choicebutton('a'),
                        choicebutton('b'),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.topCenter,
                  child: Center(
                    child: Text(
                      showtimer,
                      style: TextStyle(
                        fontSize: 35.0,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Roboto',
                      ),
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
