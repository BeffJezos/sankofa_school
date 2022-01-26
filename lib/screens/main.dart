import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'mainscreens/drawer_screen.dart';
import 'mainscreens/about_screen.dart';
import 'mainscreens/settings_screen.dart';
import 'mainscreens/home_screen.dart';
import 'quiz_screens/quizhome_screen.dart';
import 'mainscreens/alphabetoverview.dart';
import 'mainscreens/numbersoverview.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Sankofa_language_school',
      home: MyApp(),
      theme: ThemeData(fontFamily: "Circular"),
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        About.id: (context) => About(),
        Settings.id: (context) => Settings(),
        QuizHome.id: (context) => QuizHome(),
        HomePage.id: (context) => HomePage(),
        AlphabetOverview.id: (context) => AlphabetOverview(),
        NumbersOverview.id: (context) => NumbersOverview(),
      },
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 2,
      navigateAfterSeconds: new HomePage(),
      image: new Image.asset(
        'images/SankofaRichtigesLogo.png',
      ),
      backgroundColor: Colors.white,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 200.0,
      useLoader: false,
    );
  }
}

class HomePage extends StatelessWidget {
  static const String id = 'home_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DrawerScreen(),
          HomeScreen(),
        ],
      ),
    );
  }
}

// TODO: 1. Introscreen

// Todo: 5. Fortsetzen auf der HomePage

// TODO: Quiz läuft ab ->  QuizHome
// TODO: Quiz abbrechen -> QuizHome

//TODO Lore Audio wurde zweimal benutzt bei Konsonanten
