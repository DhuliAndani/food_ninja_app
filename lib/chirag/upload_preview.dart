import 'package:flutter/material.dart';

import '../common/back_button.dart';
import '../common/button_common.dart';

class Upload_Preview extends StatefulWidget {
  const Upload_Preview({Key? key}) : super(key: key);

  @override
  State<Upload_Preview> createState() => _Upload_PreviewState();
}

class _Upload_PreviewState extends State<Upload_Preview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Back_Button(
                  text: 'Upload Your Photo \nProfile',
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Text(
                    'This data will be displayed in your account \nprofile for security',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Center(
                  child: Image(
                    height: 238,
                    image: AssetImage("assets/images/Photo1.png"),
                  ),
                ),
                SizedBox(
                  height: 110,
                ),
                Center(
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
