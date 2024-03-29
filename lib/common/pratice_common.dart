import 'package:flutter/material.dart';

import '../dhruvit/your_orders_screen.dart';
import 'button_common.dart';

class PraticeCommon extends StatelessWidget {
  final String? text;
  final String? image;
  final String? countText;
  final String? SecondText;
  final String? ThirdText;
  const PraticeCommon(
      {Key? key,
      this.text,
      this.countText,
      this.SecondText,
      this.image,
      this.ThirdText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color(0xFF2C2C2E),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Image(
            image: AssetImage(image!),
          ),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text!,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Merriweather-Bold"),
              ),
              const SizedBox(height: 5),
              Text(
                countText!,
                style: const TextStyle(
                  fontFamily: "Roboto-Regular",
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Color(0x33FFFFFF),
                ),
              ),
              const SizedBox(height: 5),
              Text(
                SecondText!,
                style: const TextStyle(
                  color: Color(0xFF53E88B),
                  //  fontWeight: FontWeight.bold,
                  fontSize: 19,
                  fontFamily: "Merriweather-Bold",
                ),
              ),
            ],
          ),
          const Spacer(),
          // const ButtonCommon(
          //   height: 22,
          //   width: 90,
          //   color: Color(0xFF53E88B),
          //   text: 'Buy Again',
          //   Style: TextStyle(
          //     color: Colors.white,
          //     fontFamily: "Merriweather-Bold",
          //     fontSize: 12,
          //     fontWeight: FontWeight.bold,
          //   ),
          // ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const YourOrdersScreen(),
                ),
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
                borderRadius: BorderRadius.circular(35),
              )),
              overlayColor: const MaterialStatePropertyAll(Color(0xFF53E88B)),
              backgroundColor:
                  const MaterialStatePropertyAll(Color(0xFF53E88B)),
              fixedSize: MaterialStateProperty.all(
                const Size(90, 20),
              ),
            ),
            child: const Text(
              'Buy Again',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Merriweather-Bold",
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
    // Container(
    //   padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
    //   decoration: BoxDecoration(
    //     color: const Color(0xFF53E88B),
    //     borderRadius: BorderRadius.circular(17.5),
    //   ),
    //   child: Text(
    //     ThirdText!,
    //     style: const TextStyle(
    //         color: Colors.white,
    //         fontFamily: "Merriweather-Bold",
    //         fontSize: 12,
    //         fontWeight: FontWeight.bold),
    //   ),
    // ),
  }
}
