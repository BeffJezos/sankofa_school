import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class MenuCard extends StatelessWidget {
  MenuCard({
    required this.image,
    required this.name,
    required this.onPressed,
  });

  final String image;
  final String name;
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blueGrey[300],
                    border: Border.all(
                      color: Color(0xFF6274D7),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(14),
                    image: DecorationImage(
                      image: AssetImage("images/$image"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  margin: EdgeInsets.only(top: 100),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 60, bottom: 20),
              decoration: BoxDecoration(
                color: Color(0xFFF19750),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
              ),
              child: Center(
                child: FlatButton(
                  minWidth: 120,
                  height: 180,
                  onPressed: onPressed,
                  child: Text(
                    "$name",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFEEE8EC),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MenuCardZwei extends StatelessWidget {
  MenuCardZwei({
    required this.image,
    required this.name,
    required this.onPressed,
  });

  final String image;
  final String name;
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blueGrey[300],
                    border: Border.all(
                      color: Color(0xFF6274D7),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(14),
                    image: DecorationImage(
                      image: AssetImage("images/$image"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  margin: EdgeInsets.only(top: 100),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 60, bottom: 20),
              decoration: BoxDecoration(
                color: Color(0xFFF19750),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
              ),
              child: Center(
                child: FlatButton(
                  minWidth: 120,
                  height: 180,
                  onPressed: onPressed,
                  child: Text(
                    "$name",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFEEE8EC),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AlphabetRectangleWithText extends StatelessWidget {
  AlphabetRectangleWithText({
    required this.functionality,
    required this.input,
  });

  final String functionality;
  final String input;
  final player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      height: 60,
      child: Container(
        decoration: BoxDecoration(
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
          borderRadius: BorderRadius.all(
            Radius.circular(14),
          ),
        ),
        child: Center(
          child: FlatButton(
            onPressed: () {
              player.play('alpha/$input.mp3');
            },
            child: Text(
              functionality,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}

class AlphabetRectangleWithTextt extends StatelessWidget {
  AlphabetRectangleWithTextt({
    required this.functionality,
    required this.input,
  });

  final String functionality;
  final String input;
  final player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      height: 60,
      child: Container(
        decoration: BoxDecoration(
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
          borderRadius: BorderRadius.all(
            Radius.circular(14),
          ),
        ),
        child: Center(
          child: FlatButton(
            onPressed: () {
              player.play('zahlen/$input.mp3');
            },
            child: Text(
              functionality,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}

class AlphabetRectangleWithTextTransparent extends StatelessWidget {
  AlphabetRectangleWithTextTransparent();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      height: 65,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: Colors.transparent),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Center(
          child: FlatButton(
            onPressed: () {},
            child: Text(
              'Placeholder',
              style: TextStyle(color: Colors.transparent),
            ),
          ),
        ),
      ),
    );
  }
}

class AuswahlOptions extends StatelessWidget {
  AuswahlOptions({
    required this.onPressed,
    required this.functionality,
  });

  final GestureTapCallback onPressed;
  final String functionality;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        width: 100.0,
        height: 25.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.0), color: Color(0xFFf1faee)),
        child: Center(
          child: FlatButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  functionality,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'Roboto',
                  ),
                ),
              ],
            ),
            textColor: Colors.black,
            splashColor: Color.fromRGBO(46, 207, 150, 1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            height: 30.0,
            minWidth: 100.0,
            onPressed: onPressed,
          ),
        ),
      ),
    );
  }
}

class ColorRectangleWithText extends StatelessWidget {
  ColorRectangleWithText({
    required this.functionality,
    required this.input,
  });

  final String functionality;
  final String input;
  final player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      height: 70,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Center(
          child: FlatButton(
            onPressed: () {
              player.play('farben/$input.mp3');
            },
            child: Text(
              functionality,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ColorRectangleWithTextv extends StatelessWidget {
  ColorRectangleWithTextv({
    required this.functionality,
    required this.input,
  });

  final String functionality;
  final String input;
  final player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 70,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Center(
          child: FlatButton(
            onPressed: () {
              player.play('farben/$input.mp3');
            },
            child: Text(
              functionality,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class NumberRectangleWithText extends StatelessWidget {
  NumberRectangleWithText({
    required this.functionality,
    required this.input,
  });

  final String functionality;
  final String input;
  final player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 36,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Center(
          child: FlatButton(
            onPressed: () {
              player.play('konsonanten/$input.mp3');
            },
            child: Text(
              functionality,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 11,
                color: Colors.black,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class NumberRectangleWithTextv extends StatelessWidget {
  NumberRectangleWithTextv({
    required this.functionality,
    required this.input,
  });

  final String functionality;
  final String input;
  final player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 36,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Center(
          child: FlatButton(
            onPressed: () {
              player.play('konsonanten/$input.mp3');
            },
            child: Text(
              functionality,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 11,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class NumberRectangleWithTextk extends StatelessWidget {
  NumberRectangleWithTextk({
    required this.functionality,
    required this.input,
  });

  final String functionality;
  final String input;
  final player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 36,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Center(
          child: FlatButton(
            onPressed: () {
              player.play('alpha/$input.mp3');
            },
            child: Text(
              functionality,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class NumberRectangleWithTexteins extends StatelessWidget {
  NumberRectangleWithTexteins({
    required this.functionality,
    required this.input,
  });

  final String functionality;
  final String input;
  final player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 36,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Center(
          child: FlatButton(
            onPressed: () {
              player.play('selbstlaute/$input.mp3');
            },
            child: Text(
              functionality,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class NumberRectangleWithTextzwei extends StatelessWidget {
  NumberRectangleWithTextzwei({
    required this.functionality,
    required this.input,
  });

  final String functionality;
  final String input;
  final player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      height: 60,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.all(
            Radius.circular(14),
          ),
        ),
        child: Center(
          child: FlatButton(
            onPressed: () {
              player.play('zahlen/$input.mp3');
            },
            child: Text(
              functionality,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.normal,
                fontSize: 20.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class NumberRectangleWithTextd extends StatelessWidget {
  NumberRectangleWithTextd({
    required this.functionality,
    required this.input,
  });

  final String functionality;
  final String input;
  final player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      height: 60,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.all(
            Radius.circular(14),
          ),
        ),
        child: Center(
          child: FlatButton(
            onPressed: () {
              player.play('zahlen/$input.mp3');
            },
            child: Text(
              functionality,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class GroceriesRectangleWithText extends StatelessWidget {
  GroceriesRectangleWithText({
    required this.functionality,
    required this.input,
  });

  final String functionality;
  final String input;
  final player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      height: 40,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Center(
          child: FlatButton(
            onPressed: () {
              player.play('lebensmittel/$input.mp3');
            },
            child: Text(
              functionality,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class GroceriesRectangleWithTextv extends StatelessWidget {
  GroceriesRectangleWithTextv({
    required this.functionality,
    required this.input,
  });

  final String functionality;
  final String input;
  final player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      height: 40,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Center(
          child: FlatButton(
            onPressed: () {
              player.play('lebensmittel/$input.mp3');
            },
            child: Text(
              functionality,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DaysRectangleWithText extends StatelessWidget {
  DaysRectangleWithText({
    required this.functionality,
    required this.input,
  });

  final String functionality;
  final String input;
  final player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      height: 40,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Center(
          child: FlatButton(
            onPressed: () {
              player.play('wochentage/$input.mp3');
            },
            child: Text(
              functionality,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DaysRectangleWithTextv extends StatelessWidget {
  DaysRectangleWithTextv({
    required this.functionality,
    required this.input,
  });

  final String functionality;
  final String input;
  final player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      height: 40,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Center(
          child: FlatButton(
            onPressed: () {
              player.play('wochentage/$input.mp3');
            },
            child: Text(
              functionality,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class VowelsRectangleWithText extends StatelessWidget {
  VowelsRectangleWithText({required this.functionality, required this.input});

  final String functionality;
  final String input;
  final player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 80,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Center(
          child: FlatButton(
            onPressed: () {
              player.play('alpha/$input.mp3');
            },
            child: Text(
              functionality,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TripleVowelsRectangleWithText extends StatelessWidget {
  TripleVowelsRectangleWithText(
      {required this.functionality, required this.input});

  final String functionality;
  final String input;
  final player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 120,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Center(
          child: FlatButton(
            onPressed: () {
              player.play('alpha/$input.mp3');
            },
            child: Text(
              functionality,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TripleVowelsRectangleWithTextzwei extends StatelessWidget {
  TripleVowelsRectangleWithTextzwei({required this.functionality});

  final String functionality;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      height: 160,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Center(
          child: Text(
            functionality,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}

class TripleVowelsRectangleWithTextdrei extends StatelessWidget {
  TripleVowelsRectangleWithTextdrei({required this.functionality});

  final String functionality;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      height: 420,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Center(
          child: Text(
            functionality,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}

class TripleVowelsRectangleWithTextvier extends StatelessWidget {
  TripleVowelsRectangleWithTextvier({required this.functionality});

  final String functionality;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      height: 240,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Center(
          child: Text(
            functionality,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}

class HomeScreenOptions extends StatelessWidget {
  HomeScreenOptions({
    required this.onPressed,
    required this.functionality,
    required this.description,
  });

  final GestureTapCallback onPressed;
  final String functionality;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380.0,
      height: 80.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
      ),
      child: Center(
        child: FlatButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    functionality,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 26.0,
                      fontFamily: 'Roboto',
                    ),
                  ),
                  Text(
                    description,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 12.0,
                      fontFamily: 'Roboto',
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Icon(Icons.arrow_forward_ios_sharp),
            ],
          ),
          textColor: Colors.black,
          splashColor: Color.fromRGBO(46, 207, 150, 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          height: 60.0,
          minWidth: 380.0,
          onPressed: onPressed,
        ),
      ),
    );
  }
}

class ZurueckButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
        child: Icon(Icons.arrow_back_ios_rounded),
        onPressed: () {
          Navigator.pop(context);
        });
  }
}

class IntroScreenButton extends StatelessWidget {
  IntroScreenButton({
    required this.onPressed,
    required this.functionality,
  });

  final GestureTapCallback onPressed;
  final String functionality;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        width: 100.0,
        height: 25.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.0), color: Colors.white),
        child: Center(
          child: FlatButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  functionality,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'Roboto',
                  ),
                ),
              ],
            ),
            textColor: Colors.black,
            splashColor: Color.fromRGBO(46, 207, 150, 1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            height: 30.0,
            minWidth: 100.0,
            onPressed: onPressed,
          ),
        ),
      ),
    );
  }
}

class SettingsButton extends StatelessWidget {
  SettingsButton({
    required this.onPressed,
  });

  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        width: 80.0,
        height: 30.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14.0), color: Colors.white),
        child: Center(
          child: IconButton(
            icon: Icon(Icons.settings),
            onPressed: onPressed,
          ),
        ),
      ),
    );
  }
}

class ArrowBackButton extends StatelessWidget {
  ArrowBackButton({
    required this.onPressed,
  });

  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 20.0,
      height: 30.0,
      child: Expanded(
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Color(0xFFbc4649)),
          child: FlatButton(
            onPressed: onPressed,
            child: new LayoutBuilder(builder: (context, constraint) {
              return new Icon(Icons.arrow_back_ios_sharp,
                  color: Colors.white, size: constraint.biggest.height);
            }),
          ),
        ),
      ),
    );
  }
}

class SettingsOptions extends StatelessWidget {
  SettingsOptions({
    required this.onPressed,
    required this.functionality,
  });

  final GestureTapCallback onPressed;
  final String functionality;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 54,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            boxShadow: [
              BoxShadow(
                  blurRadius: 16,
                  offset: Offset(0, 15),
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 1)
            ]),
        child: Center(
          child: FlatButton(
            onPressed: onPressed,
            child: Text(
              functionality,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black, fontFamily: 'Roboto', fontSize: 22.0),
            ),
          ),
        ),
      ),
    );
  }
}

class MenuOptions extends StatelessWidget {
  MenuOptions({
    required this.onPressed,
    required this.icon,
  });

  final GestureTapCallback onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            boxShadow: [
              BoxShadow(
                  blurRadius: 8,
                  offset: Offset(0, 15),
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 1)
            ]),
        child: Center(
          child: FlatButton(
            height: 40,
            minWidth: 40,
            onPressed: onPressed,
            child: Icon(icon),
          ),
        ),
      ),
    );
  }
}
