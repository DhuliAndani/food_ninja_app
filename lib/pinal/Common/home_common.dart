import 'package:flutter/material.dart';
import 'package:food_ninja_app/pinal/Filter_screen.dart';
import 'package:food_ninja_app/pinal/explore_restaurant_screen.dart';
import 'package:food_ninja_app/pinal/notification_screen.dart';

class HomeCommon extends StatelessWidget {
  final String? Secondimage;
  final String? text;
  final String? thirdimage;
  final String? SecondText;
  final String? forthimage;
  final Color? color;
  final Color? SecondColor;

  const HomeCommon(
      {Key? key,
      this.Secondimage,
      this.text,
      this.thirdimage,
      this.SecondText,
      this.forthimage,
      this.color,
      this.SecondColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 268, top: 69),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NotificationScreen(),
                ),
              );
            },
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: const Color(0x1AF4F4F4),
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage(
                    Secondimage!,
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 25, top: 60),
          child: Text(
            text!,
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Merriweather-Bold",
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, top: 163),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ExploreRestaurantScreen(),
                    ),
                  );
                },
                child: Container(
                  height: 40,
                  width: 260,
                  decoration: BoxDecoration(
                    color: color!,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Image(
                        image: AssetImage(thirdimage!),
                      ),
                      Text(
                        SecondText!,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                          fontFamily: "Roboto-Regular",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FilterScreen(),
                    ),
                  );
                },
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: SecondColor!,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(forthimage!),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
