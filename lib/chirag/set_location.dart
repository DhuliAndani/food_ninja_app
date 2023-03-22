import 'package:flutter/material.dart';

import '../common/back_button.dart';
import '../common/button_common.dart';
import 'Signup_success_notification_screen.dart';

class SetLocation extends StatefulWidget {
  const SetLocation({Key? key}) : super(key: key);

  @override
  State<SetLocation> createState() => _SetLocationState();
}

class _SetLocationState extends State<SetLocation> {
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
                  text: 'Set Your Location ',
                  textTwo:
                      'This data will be displayed in your account \nprofile for security',
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    height: 147,
                    width: 342,
                    decoration: BoxDecoration(
                      color: const Color(0xff605d5d),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: const [
                            SizedBox(
                              width: 10,
                            ),
                            Image(
                              height: 33,
                              image: AssetImage("assets/images/Pin Logo.png"),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Your Location',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            height: 57,
                            width: 322,
                            decoration: BoxDecoration(
                              color: const Color(0xff938e8e),
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(),
                            ),
                            child: const Center(
                              child: Text(
                                'Set \nLocation',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 250,
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
                        builder: (context) =>
                            const SignupSuccessNotificationScreen(),
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
