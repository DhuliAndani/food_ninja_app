import 'package:flutter/material.dart';
import 'edit_location_screen.dart';
import 'order_details_screen.dart';

class PaymentsScreen extends StatefulWidget {
  const PaymentsScreen({super.key});

  @override
  State<PaymentsScreen> createState() => _PaymentsScreenState();
}

class _PaymentsScreenState extends State<PaymentsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
              image: AssetImage("assets/images/Pattern.png"),
              scale: 1,
              alignment: Alignment.topRight),),
      child: Scaffold(
        backgroundColor: const Color(0xFF0D0D0D),
        body: Column(
          children: [
            SizedBox(
              height: 170,
              width: double.infinity,
              child: Stack(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 50),
                    child: Image(
                      image: AssetImage("assets/images/Pattern.png"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50, left: 20),
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromARGB(35, 249, 169, 77),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 2, left: 8),
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const OrderDetailsScreen(),
                              ),
                            );
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            color: Color(0xFFDA6317),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
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
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
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
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 170),
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
                  Padding(
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
                    padding:
                        const EdgeInsets.only(right: 15, left: 15, top: 130),
                    child: SizedBox(
                      height: 57,
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
                              builder: (context) => const EditLocationScreen(),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
