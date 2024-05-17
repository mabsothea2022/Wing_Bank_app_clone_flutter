import 'package:flutter/material.dart';

class ItemList_Insurance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        height: 690,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.9),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 1,
            color: Colors.black.withOpacity(0.1),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 5, bottom: 5),
          child: SingleChildScrollView(
            child: Column(
              children: [
                buildRow(
                  "assets/images/bill-payment/utilities/logo-01.png",
                  "AIA (Cambodia) Life Insurance",
                ),
                buildDivider(),
                buildRow(
                  "assets/images/bill-payment/utilities/null-image.png",
                  "BIMA CAMBODIA",
                ),
                buildDivider(),
                buildRow(
                  "assets/images/bill-payment/utilities/null-image.png",
                  "CB GENERAL INSURANCE PLC",
                ),
                buildDivider(),
                buildRow(
                  "assets/images/bill-payment/utilities/water-chum-kiri.jpg",
                  "Cambodian Life",
                ),
                buildDivider(),
                buildRow(
                  "assets/images/bill-payment/utilities/enterprise.jpg",
                  "Dai-ichi Life Insurance (Cambodia) PLC",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildRow(String imagePath, String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 13, bottom: 13),
      child: Container(
        child: Row(
          children: [
            Container(
              width: 80,
              child: Image.asset(imagePath, height: 40),
            ),
            Container(
              width: 295,
              child: Text(
                text,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDivider() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        height: 1,
        color: Colors.black.withOpacity(0.2),
      ),
    );
  }
}
