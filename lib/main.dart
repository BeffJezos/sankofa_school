import 'package:flutter/material.dart';
import 'screens/mainscreens/drawer_screen.dart';
import 'screens/mainscreens/about_screen.dart';
import 'screens/mainscreens/settings_screen.dart';
import 'screens/mainscreens/home_screen.dart';
import 'screens/quiz_screens/quizhome_screen.dart';
import 'screens/mainscreens/alphabetoverview.dart';
import 'screens/mainscreens/numbersoverview.dart';

void main() async {
  await Future.delayed(
    Duration(seconds: 3),
  );
  runApp(
    MaterialApp(
      title: 'Sankofa_language_school',
      home: HomePage(),
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

// Todo: 5. Fortsetzen auf der HomePage
//TODO Beim zurückgehen auf der gleichen Position wieder erscheinen und nicht ganz oben im Hauptmenü
// TODO Ton beim Quiz

//TODO Lore Audio wurde zweimal benutzt bei Konsonanten
//TODO Audio für Begrüßungen, Über mich, Konversation, Einkaufen und wegweisung
