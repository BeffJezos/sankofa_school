import 'package:flutter/rendering.dart';
import 'package:flutter/material.dart';
import 'package:sankofa_school/customcreations/styles.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatefulWidget {
  static const String id = 'about_screen';

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.white24,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                ),
              )
            ],
          )),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Align(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios_rounded,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Text(
                      'SANKOFA',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(32, 32, 32, 80),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(60),
                    topLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                    colors: [
                      Color.fromRGBO(108, 127, 227, 1),
                      Color.fromRGBO(104, 118, 226, 1),
                      Color.fromRGBO(97, 105, 222, 1),
                      Color.fromRGBO(92, 96, 222, 1),
                    ],
                  ),
                ),
                height: 560,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: AutoSizeText(
                              'Sankofa ist ein altes westafrikanisches Symbol und bedeutet soviel wie “zurück zu du den Wurzeln”'
                              ' (um zu finden was verloren ging).Viele Afrikaner in Deutschland haben in der Vergangenheit leider versäumt,'
                              ' ihre Heimat kennen zu lernen.',
                              textAlign: TextAlign.start,
                              style: kNormalStyle),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: AutoSizeText(
                              'Es wurde vernachlässigt, ihnen die heimatliche Sprache, Geschichte und Kultur'
                              ' zu vermitteln. Mit Sprache können wir nicht nur kommunizieren. Sie ist auch Teil unserer Identität und ist immer'
                              ' verknüpft mit bestimmten Kulturen und Lebensweisen.',
                              textAlign: TextAlign.start,
                              style: kNormalStyle),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: AutoSizeText(
                              'Wenn Sprache verloren geht, geht auch unwiderruflich die Kultur'
                              ' zu Grunde.Sankofa Sprachkurs möchte helfen, das Versäumte nachzuholen und stellt deshalb Unterrichtseinheiten'
                              ' zur Verfügung.Unser Ziel ist es, allen Interessierten die Sprache, sowie die Kultur und Geschichte zu vermitteln.',
                              textAlign: TextAlign.start,
                              style: kNormalStyle),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 24),
              padding: EdgeInsets.symmetric(horizontal: 22),
              height: 100,
              child: Row(
                children: [
                  Expanded(
                    child: FlatButton(
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1.5, color: Colors.white),
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.topRight,
                              colors: [
                                Color.fromRGBO(250, 139, 134, 1),
                                Color.fromRGBO(253, 156, 141, 1),
                                Color.fromRGBO(253, 161, 143, 1),
                                Color.fromRGBO(255, 171, 147, 1),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                            child: AutoSizeText(
                          'Website',
                          style: TextStyle(
                              color: Color(0xFFf1faee),
                              fontWeight: FontWeight.bold),
                          minFontSize: 26,
                        )),
                      ),
                      onPressed: () {
                        _launchURL2();
                      },
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                    colors: [
                      Color.fromRGBO(250, 139, 134, 1),
                      Color.fromRGBO(253, 156, 141, 1),
                      Color.fromRGBO(253, 161, 143, 1),
                      Color.fromRGBO(255, 171, 147, 1),
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  )),
            ),
          )
        ],
      ),
    );
  }
}

_launchURL2() async {
  const url = 'https://www.sankofa-sprachschule.de/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
