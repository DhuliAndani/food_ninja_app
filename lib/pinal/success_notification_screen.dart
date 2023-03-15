import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_ninja_app/pinal/home_screen.dart';

class SuccessNotificationScreen extends StatefulWidget {
  const SuccessNotificationScreen({Key? key}) : super(key: key);

  @override
  State<SuccessNotificationScreen> createState() =>
      _SuccessNotificationScreenState();
}

class _SuccessNotificationScreenState extends State<SuccessNotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          image: AssetImage("assets/images/green.png"),
          scale: 1,
          alignment: Alignment.topRight,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Stack(
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 190, left: 100),
                  child: Image(
                    image: AssetImage("assets/images/Success Illustration.png"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 390, left: 120),
                  child: Text(
                    "Congrats!",
                    style: TextStyle(
                      color: Color(0xFF53E88B),
                      fontFamily: "Merriweather-Bold",
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 435, left: 75),
                  child: Text(
                    "Password reset succesful",
                    style: TextStyle(
                      color: Colors.white,
                      //fontFamily: "Nunito-Regular",
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70, top: 260),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(builder: (context) => HomeScreen()),
                  );
                },
                style: ButtonStyle(
                  textStyle: MaterialStateProperty.all(const TextStyle(
                    color: Color(0xFFFEFEFF),
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Merriweather-Bold",
                  )),
                  shape: MaterialStateProperty.all(ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  )),
                  //overlayColor: MaterialStatePropertyAll(Color(0xFF53E88B)),
                  backgroundColor:
                      const MaterialStatePropertyAll(Color(0xFF53E88B)),
                  fixedSize: MaterialStateProperty.all(
                    Size(159, 57),
                  ),
                ),
                child: Text("Back"),
              ),
            ),
            //
          ],
        ),
      ),
    );
  }
}
