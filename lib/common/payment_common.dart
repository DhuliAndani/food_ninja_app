import 'package:flutter/material.dart';
import 'package:food_ninja_app/dhruvit/order_details_screen.dart';

class PaymentCommon extends StatelessWidget {
  const PaymentCommon({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Stack(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: const Color(0xFF53E88B),
            ),
            child: Image.asset("assets/images/Payment_Pattern.png"),
          ),
          Container(
            height: 200,
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "sub-Total",
                    style: TextStyle(
                      fontFamily: "BentonSans",
                      fontSize: 14,
                      color: Color(0xFFFEFEFF),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      "Delivery Charge",
                      style: TextStyle(
                        fontFamily: "BentonSans",
                        fontSize: 14,
                        color: Color(0xFFFEFEFF),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Text(
                    "Discount",
                    style: TextStyle(
                      fontFamily: "BentonSans",
                      fontSize: 14,
                      color: Color(0xFFFEFEFF),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      "Total",
                      style: TextStyle(
                        fontFamily: "BentonSans",
                        fontSize: 18,
                        color: Color(0xFFFEFEFF),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 250),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text(
                  "120 \$",
                  style: TextStyle(
                    fontFamily: "BentonSans",
                    fontSize: 14,
                    color: Color(0xFFFEFEFF),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    "10 \$",
                    style: TextStyle(
                      fontFamily: "BentonSans",
                      fontSize: 14,
                      color: Color(0xFFFEFEFF),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Text(
                  "20 \$",
                  style: TextStyle(
                    fontFamily: "BentonSans",
                    fontSize: 14,
                    color: Color(0xFFFEFEFF),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    "150 \$",
                    style: TextStyle(
                      fontFamily: "BentonSans",
                      fontSize: 18,
                      color: Color(0xFFFEFEFF),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15, left: 15, top: 130),
            child: Container(
              height: 57,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.white),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                child: const Center(
                  child: Text(
                    "Place My Order",
                    style: TextStyle(
                      fontFamily: "BentonSans",
                      fontSize: 14,
                      color: Color(0xFF53E88B),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OrderDetailsScreen(),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
