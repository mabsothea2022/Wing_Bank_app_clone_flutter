import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Promotion extends StatelessWidget {
  Promotion({Key? key}) : super(key: key);

  List<Map<String, String>> promotions = [
    {
      "image": "assets/images/poster-1.png",
      "message": "Promotion with Wing Digital Loans...."
    },
    {
      "image": "assets/images/poster-2.png",
      "message": "Promotion Save for a Goal...."
    },
    {
      "image": "assets/images/poster-3.png",
      "message": "Promotion 800r only...."
    },
    {"image": "assets/images/poster-4.png", "message": "Promotion ...."},
    {"image": "assets/images/poster-5.png", "message": "Promotion ...."},
    {"image": "assets/images/poster-6.png", "message": "Promotion ...."},
    {"image": "assets/images/poster-7.png", "message": "Promotion ...."},
    {"image": "assets/images/poster-8.png", "message": "Promotion ...."},
    {"image": "assets/images/poster-9.png", "message": "Promotion ...."},
    {"image": "assets/images/poster-10.png", "message": "Promotion ...."},
    {"image": "assets/images/poster-11.png", "message": "Promotion ...."},
    {"image": "assets/images/poster-12.png", "message": "Promotion ...."},
    {"image": "assets/images/poster-13.png", "message": "Promotion ...."},
    {"image": "assets/images/poster-14.png", "message": "Promotion ...."},
    {"image": "assets/images/poster-15.png", "message": "Promotion ...."},
    {"image": "assets/images/poster-16.png", "message": "Promotion ...."},
    {"image": "assets/images/poster-17.png", "message": "Promotion ...."},
    {"image": "assets/images/poster-18.png", "message": "Promotion ...."},
    {"image": "assets/images/poster-19.png", "message": "Promotion ...."},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: promotions.map((promotion) {
        return GestureDetector(
          onTap: () {
            print(promotion['message']);
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
