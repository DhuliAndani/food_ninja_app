import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'notification_screen.dart';

class VoucherPromoScreen extends StatefulWidget {
  const VoucherPromoScreen({Key? key}) : super(key: key);

  @override
  State<VoucherPromoScreen> createState() => _VoucherPromoScreenState();
}

class _VoucherPromoScreenState extends State<VoucherPromoScreen> {
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
                    // Image.asset("assets/images/Pattern.png"),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 40),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
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
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 25, top: 110),
                      child: Text(
                        "Voucher Promo",
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: "Merriweather-Bold",
                          color: Color(0xFF09051C),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 25, right: 25, top: 170),
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Image.asset("assets/images/Frame.png"),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top: 15, right: 15),
                                child: Text(
                                  "Special Deal For ",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontFamily: "Nunito-Bold",
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                "October",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: "Nunito-Bold",
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Container(
                                height: 32,
                                width: 82,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFFFFFF),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      "Order Now",
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF009C51),
                                        fontFamily: "Nunito-Bold",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25, top: 20),
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Image.asset("assets/images/Frame_2.png"),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 15, right: 15),
                            child: Text(
                              "Special Deal For ",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF6B3A5B),
                                fontFamily: "Nunito-Bold",
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "October",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF6B3A5B),
                              fontFamily: "Nunito-Bold",
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            height: 32,
                            width: 82,
                            decoration: BoxDecoration(
                              color: const Color(0xFFFFFFFF),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  "Order Now",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF6B3A5B),
                                    fontFamily: "Nunito-Bold",
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 290, right: 25),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => NotificationScreen()),
                      );
                    },
                    style: ButtonStyle(
                      textStyle: MaterialStateProperty.all(TextStyle(
                        color: Color(0xFFFEFEFF),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Merriweather-Bold",
                      )),
                      shape:
                          MaterialStateProperty.all(ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      )),
                      overlayColor: MaterialStatePropertyAll(Color(0xFF53E88B)),
                      backgroundColor:
                          MaterialStatePropertyAll(Color(0xFF53E88B)),
                      fixedSize: MaterialStateProperty.all(
                        Size(325, 57),
                      ),
                    ),
                    child: Text("Check out"),
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
