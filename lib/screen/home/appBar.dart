import 'package:flutter/material.dart';
import 'package:wink_bank_clone/theme/colors.dart';
import 'dart:math';

AppBar appBarScreen(context) {
  return AppBar(
    backgroundColor: BackgroundColor.bgColor,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Row(
          children: [
            Text(
              "Wing",
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            SizedBox(width: 5),
            Text(
              "Bank",
              style: TextStyle(
                color: Color.fromARGB(255, 95, 0, 249),
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ],
        ),
        GestureDetector(
          onTap: () {
            print("Check Language.......");
          },
          child: Container(
            height: 40,
            width: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black.withOpacity(0.2),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "English",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                // const Icon(Icons.arrow_forward_ios),
                const SizedBox(width: 5),
                Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.identity()..rotateZ(pi / 2),
                  child: const Icon(
                    Icons.arrow_forward_ios,
                    size: 22,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
