import 'package:flutter/material.dart';
import 'package:wallet_section/utils/styles.dart';

class ReuseableContainer extends StatelessWidget {
  final String txt1, txt2, txt3, txt4;
  ReuseableContainer(
      {required this.txt1,
      required this.txt2,
      required this.txt3,
      required this.txt4});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          txt1,
          style: EcoStyle.boldStyle,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          txt2,
          style: TextStyle(
            color: Color(0xff8E90B3),
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text.rich(TextSpan(
            text: txt3,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20,
              color: Color(0xff00058C),
            ),
            children: <InlineSpan>[
              TextSpan(
                text: txt4,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff8E90B3),
                ),
              )
            ])),
      ],
    );
  }
}
