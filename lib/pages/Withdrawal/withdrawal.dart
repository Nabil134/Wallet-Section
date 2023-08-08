import 'package:flutter/material.dart';
import 'package:wallet_section/components/rounded_button.dart';
import 'package:wallet_section/pages/Withdrawal/widgets/WithDrawalreuseableContainer.dart';

class Withdrawal extends StatefulWidget {
  Withdrawal({super.key});

  @override
  State<Withdrawal> createState() => _WithdrawalState();
}

class _WithdrawalState extends State<Withdrawal> {
  bool isWithDraw = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                /*first portion start here*/
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(48),
                        color: Color(0XffFFFFFF),
                      ),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back_ios),
                      ),
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('images/Ellipse.png'),
                      radius: 25,
                    )
                  ],
                ),
                /*first portion end here*/
                /*second portion start here*/
                Image.asset('images/withDrawer.png'),
                /*second portion end here*/
                /*third portion start here*/
                WithDrawalReuseableContainer(txt: 'Amount'),
                /*third portion end here*/
                SizedBox(
                  height: 10,
                ),
                /*forth portion start here*/

                SwitchListTile(
                    title: const Text("Save  card for future purposes"),
                    value: isWithDraw,
                    onChanged: (v) {
                      setState(() {
                        isWithDraw = !isWithDraw;
                      });
                    }),
                /*forth portion end here*/
                SizedBox(
                  height: 10,
                ),
                /*fifth portion start here*/
                WithDrawalReuseableContainer(txt: 'SMS OTP'),
                /*fifth portion end here*/
                SizedBox(
                  height: 10,
                ),
                /*sixth portion start here*/
                Text(
                  'or  can add a valid debit card',
                  style: TextStyle(
                    color: Color(0xff8E90B3),
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                /*sixth portion end here*/
                SizedBox(
                  height: 10,
                ),
                /*last portion start here*/

                RoundedButton(name: 'Withdraw', onPressed: () {}),
                /*last portion end here*/
              ],
            ),
          ),
        ),
      ),
    );
  }
}
