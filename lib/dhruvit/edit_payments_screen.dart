import 'package:flutter/material.dart';

class EditPaymentsScreen extends StatefulWidget {
  const EditPaymentsScreen({super.key});

  @override
  State<EditPaymentsScreen> createState() => _EditPaymentsScreenState();
}

class _EditPaymentsScreenState extends State<EditPaymentsScreen> {
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
                    "Payment",
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
              height: 73,
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
                      Image(
                        image: AssetImage("assets/images/paypal_Logo.png"),
                        height: 23,
                        width: 86,
                      ),
                      SizedBox(width: 25),
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
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Container(
              height: 73,
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
                      Image(
                        image: AssetImage("assets/images/Visa_Logo.png"),
                        height: 16,
                        width: 50,
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
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Container(
              height: 73,
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
                      Image(
                        image: AssetImage("assets/images/Payoneer_Logo.png"),
                        height: 32,
                        width: 83,
                      ),
                      SizedBox(width: 25),
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
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
