import 'package:flutter/material.dart';
import 'package:food_ninja_app/chirag/upload_photo.dart';

import '../common/back_button.dart';
import '../common/button_common.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({Key? key}) : super(key: key);

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
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
                Center(
                    child: ButtonCommon(
                  height: 57,
                  width: 157,
                  text: 'Next',
                  color: const Color(0xff53E88B),
                  style: const TextStyle(color: Colors.white),
                  onPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const UploadPhoto(),
                      ),
                    );
                  },
                )),
              ],
            ),
          ],
        ));
  }
}
