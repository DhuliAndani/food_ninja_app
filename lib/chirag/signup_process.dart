import 'package:flutter/material.dart';
import 'package:food_ninja_app/chirag/payment_method.dart';

import '../common/back_button.dart';
import '../common/button_common.dart';

class SignupProcess extends StatefulWidget {
  const SignupProcess({Key? key}) : super(key: key);

  @override
  State<SignupProcess> createState() => _SignupProcessState();
}

class _SignupProcessState extends State<SignupProcess> {
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
                  text: 'Fill in your bio to get \nstarted',
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Text(
                    'This data will be displayed in your account \nprofile for security',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    height: 61,
                    width: 347,
                    decoration: BoxDecoration(
                      color: const Color(0xff605d5d),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(),
                    ),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'First Name',
                          hintStyle: const TextStyle(color: Color(0xffF4F4F4)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Container(
                    height: 61,
                    width: 347,
                    decoration: BoxDecoration(
                      color: const Color(0xff605d5d),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(),
                    ),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Last Name',
                          hintStyle: const TextStyle(color: Color(0xffF4F4F4)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
                  child: Container(
                    height: 61,
                    width: 347,
                    decoration: BoxDecoration(
                      color: const Color(0xff605d5d),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(),
                    ),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Mobile Number',
                          hintStyle: const TextStyle(color: Color(0xffF4F4F4)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 170,
                ),
                Center(
                    child: ButtonCommon(
                  height: 57,
                  width: 157,
                  text: 'Next',
                  color: const Color(0xff53E88B),
                  Style: const TextStyle(color: Colors.white),
                  onPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PaymentMethod(),
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
