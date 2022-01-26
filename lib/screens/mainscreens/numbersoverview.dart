import 'package:flutter/material.dart';
import 'package:sankofa_school/customcreations/customs.dart';
import 'package:sankofa_school/customcreations/styles.dart';

class NumbersOverview extends StatefulWidget {
  static const String id = 'numbersoverview_screen';

  @override
  _NumbersOverviewState createState() => _NumbersOverviewState();
}

class _NumbersOverviewState extends State<NumbersOverview> {
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
                    Text('Die Zahlen', style: kTitleStyle),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    AlphabetRectangleWithTextt(
                      functionality: '0',
                      input: 'a',
                    ),
                    AlphabetRectangleWithTextt(
                      functionality: '1',
                      input: 'b',
                    ),
                    AlphabetRectangleWithTextt(
                      functionality: '2',
                      input: 'c',
                    ),
                    AlphabetRectangleWithTextt(
                      functionality: '3',
                      input: 'd',
                    ),
                    AlphabetRectangleWithTextt(
                      functionality: '4',
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
                    AlphabetRectangleWithTextt(
                      functionality: '65',
                      input: 'f',
                    ),
                    AlphabetRectangleWithTextt(
                      functionality: '6',
                      input: 'g',
                    ),
                    AlphabetRectangleWithTextt(
                      functionality: '7',
                      input: 'h',
                    ),
                    AlphabetRectangleWithTextt(
                      functionality: '8',
                      input: 'i',
                    ),
                    AlphabetRectangleWithTextt(
                      functionality: '9',
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
                    AlphabetRectangleWithTextt(
                      functionality: '10',
                      input: 'k',
                    ),
                    AlphabetRectangleWithTextt(
                      functionality: '11',
                      input: 'l',
                    ),
                    AlphabetRectangleWithTextt(
                      functionality: '12',
                      input: 'm',
                    ),
                    AlphabetRectangleWithTextt(
                      functionality: '13',
                      input: 'n',
                    ),
                    AlphabetRectangleWithTextt(
                      functionality: '14',
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
                    AlphabetRectangleWithTextt(
                      functionality: '15',
                      input: 'p',
                    ),
                    AlphabetRectangleWithTextt(
                      functionality: '16',
                      input: 'q',
                    ),
                    AlphabetRectangleWithTextt(
                      functionality: '17',
                      input: 'r',
                    ),
                    AlphabetRectangleWithTextt(
                      functionality: '18',
                      input: 's',
                    ),
                    AlphabetRectangleWithTextt(
                      functionality: '19',
                      input: 't',
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    AlphabetRectangleWithTextt(
                      functionality: '20',
                      input: 'u',
                    ),
                    AlphabetRectangleWithTextt(
                      functionality: '21',
                      input: 'v',
                    ),
                    AlphabetRectangleWithTextt(
                      functionality: '30',
                      input: 'v',
                    ),
                    AlphabetRectangleWithTextt(
                      functionality: '40',
                      input: 'v',
                    ),
                    AlphabetRectangleWithTextt(
                      functionality: '50',
                      input: 'v',
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    AlphabetRectangleWithTextt(
                      functionality: '60',
                      input: 'u',
                    ),
                    AlphabetRectangleWithTextt(
                      functionality: '70',
                      input: 'v',
                    ),
                    AlphabetRectangleWithTextt(
                      functionality: '80',
                      input: 'w',
                    ),
                    AlphabetRectangleWithTextt(
                      functionality: '90',
                      input: 'x',
                    ),
                    AlphabetRectangleWithTextt(
                      functionality: '100',
                      input: 'y',
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    AlphabetRectangleWithTextt(
                      functionality: '110',
                      input: 'z',
                    ),
                    AlphabetRectangleWithTextt(
                      functionality: '200',
                      input: 'aa',
                    ),
                    AlphabetRectangleWithTextt(
                      functionality: '300',
                      input: 'ab',
                    ),
                    AlphabetRectangleWithTextt(
                      functionality: '400',
                      input: 'ac',
                    ),
                    AlphabetRectangleWithTextt(
                      functionality: '500',
                      input: 'ad',
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    AlphabetRectangleWithTextt(
                      functionality: '600',
                      input: 'ae',
                    ),
                    AlphabetRectangleWithTextt(
                      functionality: '700',
                      input: 'af',
                    ),
                    AlphabetRectangleWithTextt(
                      functionality: '800',
                      input: 'ag',
                    ),
                    AlphabetRectangleWithTextt(
                      functionality: '900',
                      input: 'ah',
                    ),
                    AlphabetRectangleWithTextt(
                      functionality: '1000',
                      input: 'ai',
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    AlphabetRectangleWithTextt(
                      functionality: '2000',
                      input: 'aj',
                    ),
                    AlphabetRectangleWithTextt(
                      functionality: '3000',
                      input: 'ak',
                    ),
                    AlphabetRectangleWithTextt(
                      functionality: '4000',
                      input: 'al',
                    ),
                    AlphabetRectangleWithTextt(
                      functionality: '50000',
                      input: 'am',
                    ),
                    AlphabetRectangleWithTextt(
                      functionality: '10000',
                      input: 'an',
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
