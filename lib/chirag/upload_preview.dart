import 'package:flutter/material.dart';
import 'package:food_ninja_app/chirag/set_location.dart';

import '../common/back_button.dart';
import '../common/button_common.dart';

class UploadPreview extends StatefulWidget {
  const UploadPreview({Key? key}) : super(key: key);

  @override
  State<UploadPreview> createState() => _UploadPreviewState();
}

class _UploadPreviewState extends State<UploadPreview> {
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
                const SizedBox(
                  height: 50,
                ),
                const Center(
                  child: Image(
                    height: 238,
                    image: AssetImage("assets/images/Photo1.png"),
                  ),
                ),
                const SizedBox(
                  height: 110,
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
                          builder: (context) => const SetLocation(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
