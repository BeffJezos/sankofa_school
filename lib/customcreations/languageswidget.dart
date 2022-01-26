import 'package:flutter/material.dart';

class LanguagesWidget extends StatelessWidget {
  List<String> items = [
    "Angola",
    "Ewe",
    "Ga",
    "Twi",
    "Hausa",
    "Igbo",
    "Yoruba",
    "Kikongo",
    "Lingala",
    "Swahili",
    "Wolof",
  ];

  List<String> pictures = [
    "assets/flaggen/Angola.jpg",
    "assets/flaggen/Ewe.png",
    "assets/flaggen/GaundTwi.png",
    "assets/flaggen/GaundTwi.png",
    "assets/flaggen/Hausa.png",
    "assets/flaggen/IgboundYoruba.png",
    "assets/flaggen/IgboundYoruba.png",
    "assets/flaggen/Kikongo.png",
    "assets/flaggen/Lingala.png",
    "assets/flaggen/Swahili.png",
    "assets/flaggen/Wolof.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
      child: ListView.builder(
        itemCount: 11,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) => Container(
          height: 80,
          width: 80,
          margin: EdgeInsets.fromLTRB(4, 4, 2, 4),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(
                      (pictures[index]),
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
