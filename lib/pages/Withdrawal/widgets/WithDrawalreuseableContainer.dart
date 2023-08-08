import 'package:flutter/material.dart';
import 'package:wallet_section/utils/styles.dart';

class WithDrawalReuseableContainer extends StatelessWidget {
  final String txt;
  WithDrawalReuseableContainer({required this.txt});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          txt,
          style: EcoStyle.boldStyle,
        ),
        Container(
          height: 37,
          width: 339,
          decoration: BoxDecoration(
            color: Color(0xffD9E8FF),
            borderRadius: BorderRadius.circular(23),
          ),
        ),
      ],
    );
  }
}
