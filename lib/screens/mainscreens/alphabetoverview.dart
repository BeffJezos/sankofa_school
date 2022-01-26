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
                      functionality: 'Aa [aa]',
                      input: 'a',
                    ),
                    AlphabetRectangleWithText(
                      functionality: 'Bb [bä]',
                      input: 'b',
                    ),
                    AlphabetRectangleWithText(
                      functionality: 'Dd [dä]',
                      input: 'c',
                    ),
                    AlphabetRectangleWithText(
                      functionality: 'Ee [ee]',
                      input: 'd',
                    ),
                    AlphabetRectangleWithText(
                      functionality: 'Ɛɛ [ää]',
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
                      functionality: 'Ff [fä]',
                      input: 'f',
                    ),
                    AlphabetRectangleWithText(
                      functionality: 'Gg [gä]',
                      input: 'g',
                    ),
                    AlphabetRectangleWithText(
                      functionality: 'Hh [hä]',
                      input: 'h',
                    ),
                    AlphabetRectangleWithText(
                      functionality: 'Ii [ii]',
                      input: 'i',
                    ),
                    AlphabetRectangleWithText(
                      functionality: 'Kk [kä]',
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
                      functionality: 'Ll [el]',
                      input: 'k',
                    ),
                    AlphabetRectangleWithText(
                      functionality: 'Mm [mm]',
                      input: 'l',
                    ),
                    AlphabetRectangleWithText(
                      functionality: 'Nn [nn]',
                      input: 'm',
                    ),
                    AlphabetRectangleWithText(
                      functionality: 'Oo [oo] ',
                      input: 'n',
                    ),
                    AlphabetRectangleWithText(
                      functionality: 'Ɔɔ [ɔrr]',
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
                      functionality: 'Pp [pä]',
                      input: 'p',
                    ),
                    AlphabetRectangleWithText(
                      functionality: 'Rr [rä]',
                      input: 'q',
                    ),
                    AlphabetRectangleWithText(
                      functionality: 'Ss [sä]',
                      input: 'r',
                    ),
                    AlphabetRectangleWithText(
                      functionality: 'Tt [tä]',
                      input: 's',
                    ),
                    AlphabetRectangleWithText(
                      functionality: 'Uu [uu]',
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
                      functionality: 'Ww [wä]',
                      input: 'u',
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                    ),
                    AlphabetRectangleWithText(
                      functionality: 'Yy [jä]',
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
