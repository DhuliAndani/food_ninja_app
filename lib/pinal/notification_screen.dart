import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
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
              Stack(
                children: [
                  Image.asset("assets/images/Pattern.png"),
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
                      "Notification",
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: "Merriweather-Bold",
                        color: Color(0xFFFFFFFF),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 160),
                    child: Container(
                      height: 105,
                      width: 347,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0x1AF4F4F4),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(width: 15),
                          Image.asset("assets/images/Success Icon.png"),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              SizedBox(
                                height: 18,
                              ),
                              Text(
                                "Your order has been taken by ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Nunito-Medium",
                                  fontWeight: FontWeight.normal,
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "the driver ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Nunito-Medium",
                                  fontWeight: FontWeight.normal,
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Recently",
                                style: TextStyle(
                                  color: Color(0x4DFFFFFF),
                                  fontFamily: "Nunito-Medium",
                                  fontWeight: FontWeight.normal,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
                child: Container(
                  height: 81,
                  width: 347,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0x1AF4F4F4),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 15),
                      Image.asset("assets/images/Top Up Icon.png"),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(
                            height: 18,
                          ),
                          Text(
                            "Topup for \$100 was successful",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Nunito-Medium",
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "10.00 Am",
                            style: TextStyle(
                              color: Color(0x4DFFFFFF),
                              fontFamily: "Nunito-Medium",
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
                child: Container(
                  height: 81,
                  width: 347,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0x1AF4F4F4),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 15),
                      Image.asset("assets/images/Cancel Icon.png"),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(
                            height: 18,
                          ),
                          Text(
                            "Your order has been canceled",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Nunito-Medium",
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "22 Juny 2021",
                            style: TextStyle(
                              color: Color(0x4DFFFFFF),
                              fontFamily: "Nunito-Medium",
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
