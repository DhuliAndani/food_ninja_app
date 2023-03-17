import 'package:flutter/material.dart';

import '../common/back_button.dart';
import '../common/button_common.dart';

class UploadPhoto extends StatefulWidget {
  const UploadPhoto({Key? key}) : super(key: key);

  @override
  State<UploadPhoto> createState() => _UploadPhotoState();
}

class _UploadPhotoState extends State<UploadPhoto> {
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
                    height: 129,
                    width: 325,
                    decoration: BoxDecoration(
                      color: const Color(0xff605d5d),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      child: const Image(
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
                      color: const Color(0xff605d5d),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      child: const Image(
                        height: 84,
                        image: AssetImage("assets/images/Camera Icon.png"),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 110,
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
