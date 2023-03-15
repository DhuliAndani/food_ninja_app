import 'package:flutter/material.dart';
import 'package:food_ninja_app/common/payment_common.dart';

import '../dhruvit/common/order_details_common.dart';

class PinalScreen extends StatefulWidget {
  const PinalScreen({Key? key}) : super(key: key);

  @override
  State<PinalScreen> createState() => _PinalScreenState();
}

class _PinalScreenState extends State<PinalScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          image: AssetImage("assets/images/Pattern.png"),
          scale: 1,
          alignment: Alignment.topRight,
        ),
      ),
      child: Scaffold(
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
            const Padding(
              padding: EdgeInsets.only(top: 60),
              child: PaymentCommon(),
            ),
          ],
        ),
      ),
    );
  }
}
