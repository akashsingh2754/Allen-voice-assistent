// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:allen/pallete.dart';

class FeatureBox extends StatelessWidget {
  final Color color;
  final String headerText;
  final String descriptiontext;
  const FeatureBox({
    Key? key,
    required this.color,
    required this.headerText,
    required this.descriptiontext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
      decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(Radius.circular(15))),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20).copyWith(left: 15),
        child: Column(children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              headerText,
              style: const TextStyle(
                  fontSize: 20,
                  fontFamily: 'Cera Pro',
                  color: Pallete.blackColor,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            descriptiontext,
            style: const TextStyle(
                fontFamily: 'Cera Pro',
                color: Pallete.blackColor,
                fontWeight: FontWeight.bold),
          )
        ]),
      ),
    );
  }
}
