import 'package:flutter/material.dart';

import '../common/payment_common.dart';

class PaymentsScreen extends StatefulWidget {
  const PaymentsScreen({super.key});

  @override
  State<PaymentsScreen> createState() => _PaymentsScreenState();
}

class _PaymentsScreenState extends State<PaymentsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D0D0D),
      body: Column(
        children: [
          SizedBox(
            height: 170,
            width: double.infinity,
            child: Stack(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 50),
                  child: Image(
                    image: AssetImage("assets/images/Pattern.png"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50, left: 20),
                  child: SizedBox(
                    height: 45,
                    width: 45,
                    child: Image(
                      image: AssetImage("assets/images/back_Arrow.png"),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 120, left: 20),
                  child: Text(
                    "Confirm Order",
                    style: TextStyle(
                      fontFamily: "BentonSans",
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              height: 103,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color(0xFF252525),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text(
                        "Deliver To",
                        style: TextStyle(
                          fontFamily: "BentonSans",
                          fontSize: 14,
                          color: Color.fromARGB(255, 225, 225, 225),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(width: 170),
                      Text(
                        "Edit",
                        style: TextStyle(
                          fontFamily: "BentonSans",
                          fontSize: 14,
                          color: Color(0xFF53E88B),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Image(
                        image: AssetImage("assets/images/Icon_Location.png"),
                        height: 33,
                        width: 33,
                      ),
                      Text(
                        "4517 Washington Ave. Manchester,\n\nKentucky 39495",
                        style: TextStyle(
                          fontFamily: "BentonSans",
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
            child: Container(
              height: 103,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color(0xFF252525),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text(
                        "Payment Method",
                        style: TextStyle(
                          fontFamily: "BentonSans",
                          fontSize: 14,
                          color: Color.fromARGB(255, 225, 225, 225),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(width: 110),
                      Text(
                        "Edit",
                        style: TextStyle(
                          fontFamily: "BentonSans",
                          fontSize: 14,
                          color: Color(0xFF53E88B),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Image(
                        image: AssetImage("assets/images/paypal_Logo.png"),
                        height: 23,
                        width: 86,
                      ),
                      SizedBox(width: 40),
                      Text(
                        "2121 6352 8465 ****",
                        style: TextStyle(
                          fontFamily: "BentonSans",
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 160),
            child: PaymentCommon(),
          ),
        ],
      ),
    );
  }
}
