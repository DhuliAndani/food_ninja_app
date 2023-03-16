import 'package:flutter/material.dart';

import '../common/back_button.dart';
import '../common/button_common.dart';

class Set_Location extends StatefulWidget {
  const Set_Location({Key? key}) : super(key: key);

  @override
  State<Set_Location> createState() => _Set_LocationState();
}

class _Set_LocationState extends State<Set_Location> {
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
                const Center(
                    child: ButtonCommon(
                  height: 57,
                  width: 157,
                  text: 'Next',
                )),
              ],
            ),
          ],
        ));
  }
}
