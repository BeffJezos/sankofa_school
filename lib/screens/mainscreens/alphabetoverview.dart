import 'package:flutter/material.dart';
import 'package:sankofa_school/customcreations/customs.dart';
import 'package:sankofa_school/customcreations/styles.dart';

class AlphabetOverview extends StatefulWidget {
  static const String id = 'alphabetoverview_screen';

  @override
  _AlphabetOverviewState createState() => _AlphabetOverviewState();
}

class _AlphabetOverviewState extends State<AlphabetOverview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Row(
                  children: [
                    BackButton(
                      color: Colors.black,
                    ),
                    Text('Das Alphabet (Nsɛmfua)', style: kTitleStyle),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AlphabetRectangleWithText(
                      functionality: 'Aa',
                      input: 'a',
                    ),
                    AlphabetRectangleWithText(
                      functionality: 'Bb',
                      input: 'b',
                    ),
                    AlphabetRectangleWithText(
                      functionality: 'Dd',
                      input: 'c',
                    ),
                    AlphabetRectangleWithText(
                      functionality: 'Ee',
                      input: 'd',
                    ),
                    AlphabetRectangleWithText(
                      functionality: 'Ɛɛ',
                      input: 'e',
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AlphabetRectangleWithText(
                      functionality: 'Ff',
                      input: 'f',
                    ),
                    AlphabetRectangleWithText(
                      functionality: 'Gg',
                      input: 'g',
                    ),
                    AlphabetRectangleWithText(
                      functionality: 'Hh',
                      input: 'h',
                    ),
                    AlphabetRectangleWithText(
                      functionality: 'Ii',
                      input: 'i',
                    ),
                    AlphabetRectangleWithText(
                      functionality: 'Kk',
                      input: 'j',
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AlphabetRectangleWithText(
                      functionality: 'Ll',
                      input: 'k',
                    ),
                    AlphabetRectangleWithText(
                      functionality: 'Mm',
                      input: 'l',
                    ),
                    AlphabetRectangleWithText(
                      functionality: 'Nn',
                      input: 'm',
                    ),
                    AlphabetRectangleWithText(
                      functionality: 'Oo',
                      input: 'n',
                    ),
                    AlphabetRectangleWithText(
                      functionality: 'Ɔɔ',
                      input: 'o',
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AlphabetRectangleWithText(
                      functionality: 'Pp',
                      input: 'p',
                    ),
                    AlphabetRectangleWithText(
                      functionality: 'Rr',
                      input: 'q',
                    ),
                    AlphabetRectangleWithText(
                      functionality: 'Ss',
                      input: 'r',
                    ),
                    AlphabetRectangleWithText(
                      functionality: 'Tt',
                      input: 's',
                    ),
                    AlphabetRectangleWithText(
                      functionality: 'Uu',
                      input: 't',
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AlphabetRectangleWithText(
                      functionality: 'Ww',
                      input: 'u',
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                    ),
                    AlphabetRectangleWithText(
                      functionality: 'Yy',
                      input: 'v',
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
