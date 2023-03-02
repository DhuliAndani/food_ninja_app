import 'package:flutter/material.dart';

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
          children: [
            Row(
              children: [
                Text("Deliver To")
              ],
            )
          ],
        ),
      ),
    )
        ],
      ),
    );
  }
}