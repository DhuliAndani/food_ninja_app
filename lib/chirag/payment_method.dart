import 'package:flutter/material.dart';

import '../common/back_button.dart';
import '../common/button_common.dart';

class Payment_Method extends StatefulWidget {
  const Payment_Method({Key? key}) : super(key: key);

  @override
  State<Payment_Method> createState() => _Payment_MethodState();
}

class _Payment_MethodState extends State<Payment_Method> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Back_Button(
                  text: 'Payment Method',
                  textTwo:
                      'This data will be displayed in your account \nprofile for security',
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    height: 73,
                    width: 335,
                    decoration: BoxDecoration(
                      color: const Color(0xff605d5d),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      child: const Image(
                        height: 23,
                        image: AssetImage("assets/images/paypal.png"),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Container(
                    height: 73,
                    width: 335,
                    decoration: BoxDecoration(
                      color: const Color(0xff605d5d),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      child: const Image(
                        height: 23,
                        image: AssetImage("assets/images/Group.png"),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
                  child: Container(
                    height: 73,
                    width: 335,
                    decoration: BoxDecoration(
                      color: const Color(0xff605d5d),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      child: const Image(
                        height: 32,
                        image: AssetImage("assets/images/layer.png"),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 160,
                ),
                const Center(
                    child: ButtonCommon(
                  height: 57,
                  width: 157,
                  text: 'Next',
                  color: Color(0xff53E88B),
                  style: TextStyle(color: Colors.white),
                )),
              ],
            ),
          ],
        ));
  }
}
