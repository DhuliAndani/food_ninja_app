import 'package:flutter/material.dart';

class VerificationCodeScreen extends StatefulWidget {
  const VerificationCodeScreen({Key? key}) : super(key: key);

  @override
  State<VerificationCodeScreen> createState() => _VerificationCodeScreenState();
}

class _VerificationCodeScreenState extends State<VerificationCodeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          image: AssetImage("assets/images/Pattern.png"),
          scale: 1,
          alignment: Alignment.topRight,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 40),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: const Color(0x1AF9A84D),
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                            image: AssetImage(
                              "assets/images/Vector_arrow.png",
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 25, top: 110),
                      child: Text(
                        "Enter 4-digit",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontFamily: "BentonSans-Bold",
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 25, top: 140),
                      child: Text(
                        "Verification code",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontFamily: "BentonSans-Bold",
                        ),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25, top: 25),
                  child: Text(
                    "Code send to +6282045**** . This code will",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      // fontFamily: "BentonSans-Bold",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 2),
                  child: const Text(
                    "expired in 01:30",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      // fontFamily: "BentonSans-Bold",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25, top: 15),
                  child: Container(
                    height: 103,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0x1AFFFFFF),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "1",
                            style: TextStyle(
                              fontSize: 33,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "9",
                            style: TextStyle(
                              fontSize: 33,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "2",
                            style: TextStyle(
                              fontSize: 33,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "3",
                            style: TextStyle(
                              fontSize: 33,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 95, top: 360),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      textStyle: MaterialStateProperty.all(
                        const TextStyle(
                          color: Color(0xFFFEFEFF),
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Merriweather-Bold",
                        ),
                      ),
                      shape: MaterialStateProperty.all(
                        ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      backgroundColor:
                          const MaterialStatePropertyAll(Color(0xFF53E88B)),
                      fixedSize: MaterialStateProperty.all(
                        Size(159, 57),
                      ),
                    ),
                    child: Text("Next"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}