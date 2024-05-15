import 'package:flutter/material.dart';
import 'package:wink_bank_clone/screen/Page/auth/register.dart';

// ignore: must_be_immutable
class Promotion extends StatelessWidget {
  Promotion({Key? key}) : super(key: key);

  List<Map<String, String>> promotions = [
    {
      "image": "assets/images/poster-1.png",
      "onPress": "Promotion with Wing Digital Loans...."
    },
    {
      "image": "assets/images/poster-2.png",
      "onPress": "Promotion Save for a Goal...."
    },
    {
      "image": "assets/images/poster-3.png",
      "onPress": "Promotion 800r only...."
    },
    {"image": "assets/images/poster-4.png", "onPress": "Promotion ...."},
    {"image": "assets/images/poster-5.png", "onPress": "Promotion ...."},
    {"image": "assets/images/poster-6.png", "onPress": "Promotion ...."},
    {"image": "assets/images/poster-7.png", "onPress": "Promotion ...."},
    {"image": "assets/images/poster-8.png", "onPress": "Promotion ...."},
    {"image": "assets/images/poster-9.png", "onPress": "Promotion ...."},
    {"image": "assets/images/poster-10.png", "onPress": "Promotion ...."},
    {"image": "assets/images/poster-11.png", "onPress": "Promotion ...."},
    {"image": "assets/images/poster-12.png", "onPress": "Promotion ...."},
    {"image": "assets/images/poster-13.png", "onPress": "Promotion ...."},
    {"image": "assets/images/poster-14.png", "onPress": "Promotion ...."},
    {"image": "assets/images/poster-15.png", "onPress": "Promotion ...."},
    {"image": "assets/images/poster-16.png", "onPress": "Promotion ...."},
    {"image": "assets/images/poster-17.png", "onPress": "Promotion ...."},
    {"image": "assets/images/poster-18.png", "onPress": "Promotion ...."},
    {"image": "assets/images/poster-19.png", "onPress": "Promotion ...."},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: promotions.map((promotion) {
        return GestureDetector(
          onTap: () {
            print(
              promotion['onPress'],
            );
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Register(),
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(
                promotion['image']!,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
