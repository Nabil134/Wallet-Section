import 'package:flutter/material.dart';
import 'package:wallet_section/utils/styles.dart';

class CustomButton extends StatelessWidget {
  final String text;
  IconData? icon;
  final Function()? onPressed;
  CustomButton({required this.text, this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: Color(0xff007AEB),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Icon(
              icon,
              size: 18,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            text,
            style: EcoStyleButton.boldStyle,
          ),
        ],
      ),
    );
  }
}
