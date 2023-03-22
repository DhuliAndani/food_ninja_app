import 'package:flutter/material.dart';
import 'package:food_ninja_app/dhruvit/payments_screen.dart';
import '../common/button_common.dart';
import '../common/order_details_common.dart';

class OrderDetailsScreen extends StatefulWidget {
  const OrderDetailsScreen({super.key});

  @override
  State<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(

        color: Colors.black,
        image: DecorationImage(
            image: AssetImage("assets/images/Pattern.png"),
            scale: 1,
            alignment: Alignment.topRight),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            SizedBox(
              height: 170,
              width: double.infinity,
              child: Stack(
                children:  [
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
                          onPressed: () {},
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
                      "Order details",
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
            OrderDetailsCommon(
              image: Image.asset("assets/images/Menu_Photo.png"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: OrderDetailsCommon(
                image: Image.asset("assets/images/Menu_Photo_One.png"),
              ),
            ),
            OrderDetailsCommon(
              image: Image.asset("assets/images/Menu_Photo_Two.png"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 60),
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
                            color: Color(0xFFFEFFFF),
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
                    child: ButtonCommon(
                      color: Colors.white,
                      onPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PaymentsScreen(),
                          ),
                        );
                      },
                      text: "Set Location",
                      width: 325,
                      height: 57,
                      style: const TextStyle(
                        fontFamily: "BentonSans",
                        fontSize: 14,
                        color: Color(0xFF53E88B),
                        fontWeight: FontWeight.w400,
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
