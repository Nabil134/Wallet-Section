import 'package:flutter/material.dart';
import 'package:wallet_section/components/custom_button.dart';
import 'package:wallet_section/pages/Withdrawal/withdrawal.dart';
import 'package:wallet_section/pages/add_card/add_card.dart';
import 'package:wallet_section/pages/wallet_page/widgets/reuseableContainer.dart';
import 'package:wallet_section/utils/styles.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({super.key});

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
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
                const Text(
                  'Your Chayta Wallet',
                  style: EcoStyle.boldStyle,
                ),
                /*second portion end here*/
                SizedBox(
                  height: 5,
                ),
                /*third portion start here*/
                Container(
                  height: 170,
                  width: 321,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/Rectangle 52.png'),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.qr_code_outlined,
                              size: 32,
                              color: Color(0xffFFFFFF),
                            ),
                            const Text(
                              'Current Balance',
                              style: EcoStyleText1.boldStyle,
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        '\$ 4000.00',
                        style: EcoStyleBold.boldStyle,
                      ),
                    ],
                  ),
                ),
                /*third portion end here*/
                SizedBox(
                  height: 10,
                ),
                /*forth portion start here*/
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomButton(
                      text: 'Add Money',
                      icon: Icons.add,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AddCard()),
                        );
                      },
                    ),
                    CustomButton(
                      text: ' Withdrawal',
                      icon: Icons.minimize,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Withdrawal()),
                        );
                      },
                    ),
                    CustomButton(
                      text: 'Transfer',
                      icon: Icons.arrow_forward,
                      onPressed: () {},
                    ),
                  ],
                ),

                /*forth portion end here*/
                SizedBox(
                  height: 20,
                ),
                /*fifth portion start here*/
                const Text(
                  'Notification',
                  style: EcoStyle.boldStyle,
                ),
                /*fifth portion end here*/
                Divider(
                  color: Color(0xff9B9CBA),
                ),
                /*sixth portion start here*/
                ReuseableContainer(
                  txt1: 'Today',
                  txt2: 'Receive from Innocent Chayta Wallet',
                  txt3: '\$1200',
                  txt4: ',7hr ',
                ),
                /*sixth portion end here*/
                SizedBox(
                  height: 10,
                ),
                /*seventh portion start here*/
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Added to your Chayta Wallet',
                      style: TextStyle(
                        color: Color(0xff8E90B3),
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text.rich(TextSpan(
                        text: '\$200',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Color(0xff00058C),
                        ),
                        children: <InlineSpan>[
                          TextSpan(
                            text: ',7hr ',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff8E90B3),
                            ),
                          ),
                        ])),
                  ],
                ),

                /*seventh portion end here*/
                Divider(
                  color: Color(0xff9B9CBA),
                ),
                /*last portion start here*/
                ReuseableContainer(
                  txt1: 'Yesterday',
                  txt2: 'Added to your Chayta Wallet',
                  txt3: '\$1200',
                  txt4: ',,5:00pm  ',
                ),
                /*last portion end here*/
              ],
            ),
          ),
        ),
      ),
    );
  }
}
