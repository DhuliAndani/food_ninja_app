import 'package:flutter/material.dart';

import '../common/back_button.dart';
import '../common/button_common.dart';

class Upload_Photo extends StatefulWidget {
  const Upload_Photo({Key? key}) : super(key: key);

  @override
  State<Upload_Photo> createState() => _Upload_PhotoState();
}

class _Upload_PhotoState extends State<Upload_Photo> {
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
                  text: 'Upload Your Photo \nProfile',
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    'This data will be displayed in your account \nprofile for security',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    height: 129,
                    width: 325,
                    decoration: BoxDecoration(
                      color: Color(0xff605d5d),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      child: Image(
                        height: 84,
                        image: AssetImage("assets/images/Gallery Icon.png"),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Container(
                    height: 129,
                    width: 325,
                    decoration: BoxDecoration(
                      color: Color(0xff605d5d),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      child: Image(
                        height: 84,
                        image: AssetImage("assets/images/Camera Icon.png"),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 110,
                ),
                Center(child: ButtinCommon()),
              ],
            ),
          ],
        ));
  }
}
