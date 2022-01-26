import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:url_launcher/url_launcher.dart';

class Settings extends StatefulWidget {
  static const String id = 'settings_screen';

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F2F8),
      appBar: AppBar(
        backgroundColor: Color(0xFFF3F2F8),
        elevation: 1,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: ListView(
          children: [
            GradientText(
              "Einstellungen",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w500,
              ),
              colors: [
                Color.fromRGBO(250, 139, 134, 1),
                Color.fromRGBO(253, 156, 141, 1),
                Color.fromRGBO(253, 161, 143, 1),
                Color.fromRGBO(255, 171, 147, 1),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                GradientText(
                  "Konto",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  colors: [
                    Color.fromRGBO(108, 127, 227, 1),
                    Color.fromRGBO(104, 118, 226, 1),
                    Color.fromRGBO(97, 105, 222, 1),
                    Color.fromRGBO(92, 96, 222, 1),
                  ],
                ),
              ],
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 10,
            ),
            buildAccountOptionRow(
                context,
                "Soziale Medien",
                "Wir freuen uns auf euren Besuch.",
                "assets/images/Instagram6.png",
                _launchURL1),
            buildAccountOptionRow(
                context,
                "Sprache",
                "Bald könnt ihr auf Englisch lernen.",
                "assets/images/Deutschland.png",
                _launchURL2),
            buildAccountOptionRow(
                context,
                "Allgemeine Geschäftsbedingungen",
                "Ohne die geht nichts.",
                "assets/images/GoogleDrive.jfif",
                _launchURL3),
            buildAccountOptionRow(
                context,
                "Datenschutzerklärung",
                "Eure Daten liegen uns am Herzen.",
                "assets/images/GoogleDrive.jfif",
                _launchURL4),
            buildAccountOptionRow(context, "Impressum", "Alles über uns.",
                "assets/images/GoogleDrive.jfif", _launchURL5),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }

  Row buildNotificationOptionRow(String title, bool isActive) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
        ),
        Transform.scale(
            scale: 0.7,
            child: CupertinoSwitch(
              value: isActive,
              onChanged: (bool val) {},
            ))
      ],
    );
  }

  GestureDetector buildAccountOptionRow(BuildContext context, String title,
      String content, String picture, GestureTapCallback onPressed) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              backgroundColor: Color(0xFFF3F2F8),
              title: GradientText(
                content,
                colors: [
                  Color.fromRGBO(250, 139, 134, 1),
                  Color.fromRGBO(253, 156, 141, 1),
                  Color.fromRGBO(253, 161, 143, 1),
                  Color.fromRGBO(255, 171, 147, 1),
                ],
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
              ),
              content: Builder(
                builder: (context) {
                  var height = MediaQuery.of(context).size.height;
                  var width = MediaQuery.of(context).size.width;

                  return Container(
                    height: height - 500,
                    width: width - 200,
                    child: Stack(
                      children: [
                        Center(
                          child: FlatButton(
                            onPressed: onPressed,
                            child: Container(
                              width: 88,
                              height: 64,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(picture),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Container(
                            height: 90,
                            width: 66,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  width: 4,
                                  color: Color.fromRGBO(97, 105, 222, 1),
                                ),
                                shape: BoxShape.circle,
                                color: Colors.transparent),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            );
          },
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}

_launchURL1() async {
  const url = 'https://www.instagram.com/sankofa_sprachschule/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
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

_launchURL3() async {
  const url =
      'https://drive.google.com/file/d/1CRhriJ6HAmV8BQzBn1_Bv1eSJubRLv2m/view?usp=sharing';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL4() async {
  const url =
      'https://drive.google.com/file/d/1hlU_lCtjovyh5E1R8bf8o1HYC-Cnu8I9/view?usp=sharing';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL5() async {
  const url =
      'https://drive.google.com/file/d/1TbLbZgYGCTOUdrj_DIe3iiIKvFoD-IlN/view?usp=sharing';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
