import 'package:flutter/material.dart';
import 'package:wallet_section/components/rounded_button.dart';
import 'package:wallet_section/pages/add_card/widgets/AddCardreuseableContainer.dart';

import 'package:wallet_section/utils/styles.dart';

class AddCard extends StatefulWidget {
  AddCard({super.key});

  @override
  State<AddCard> createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  bool isSave = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
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
                Image.asset('images/addcart.png'),
                /*second portion end here*/
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    /*third portion start here*/
                    const Text(
                      'Add  Card',
                      style: EcoStyle.boldStyle,
                    ),

                    /*third portion end here*/
                    SizedBox(
                      height: 20,
                    ),
                    /*forth portion start here*/
                    AddCardReuseableContainer(txt: 'Card Number '),
                    /*forth portion end here*/
                    SizedBox(
                      height: 10,
                    ),
                    /*fifth portion start here*/
                    Column(
                      children: [
                        Row(
                          children: [
                            const Text(
                              'Expiry date',
                              style: EcoStyle.boldStyle,
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            const Text(
                              'CVV',
                              style: EcoStyle.boldStyle,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 37,
                              width: 125,
                              decoration: BoxDecoration(
                                color: Color(0xffD9E8FF),
                                borderRadius: BorderRadius.circular(23),
                              ),
                            ),
                            SizedBox(
                              width: 45,
                            ),
                            Container(
                              height: 37,
                              width: 125,
                              decoration: BoxDecoration(
                                color: Color(0xffD9E8FF),
                                borderRadius: BorderRadius.circular(23),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    /*fifth portion end here*/
                    SizedBox(
                      height: 20,
                    ),
                    /*sixth portion start here*/
                    AddCardReuseableContainer(txt: 'Card  name'),
                    /*sixth portion end here*/
                    SizedBox(
                      height: 10,
                    ),
                    /*seven portion start here*/

                    SwitchListTile(
                        title: const Text("Save  card for future purposes"),
                        value: isSave,
                        onChanged: (v) {
                          setState(() {
                            isSave = !isSave;
                          });
                        }),
                    /*seven portion end here*/
                  ],
                ),
                /*last portion start here*/

                RoundedButton(name: 'Pay Now', onPressed: () {}),
                /*last portion end here*/
              ],
            ),
          ),
        ),
      ),
    );
  }
}
