import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String name;

  final Function()? onPressed;
  RoundedButton({required this.name, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return /*Elevated Button start here*/
        Container(
      height: 39,
      width: 200,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xff2B7AF5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          name,
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
      ),
    );
    /*Elevated Button end here*/
  }
}
