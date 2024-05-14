import 'package:flutter/material.dart';
import 'package:wink_bank_clone/screen/home/body/cartItem.dart';
import 'package:wink_bank_clone/screen/home/body/contact.dart';
import '../../theme/colors.dart';
import 'body/promotion.dart';
import 'body/top_body.dart';

class BodyScreen extends StatefulWidget {
  const BodyScreen({super.key});
  @override
  State<BodyScreen> createState() => _BodyScreenState();
}

class _BodyScreenState extends State<BodyScreen> {
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
    return Scaffold(
      backgroundColor: BackgroundColor.bgColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopBody(),
            _buildCardListView(context),
          ],
        ),
      ),
    );
  }

  Widget _buildCardListView(context) {
    return Container(
      // height: 2000,
      // width: 500,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(255, 233, 236, 243),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardItem(
                  imageAsset: "assets/icons/local_transfer.png",
                  text: "Local Transfer",
                ),
                CardItem(
                  imageAsset: "assets/icons/new_account.png",
                  text: "New Account",
                ),
                CardItem(
                  imageAsset: "assets/icons/load.png",
                  text: "Loan",
                ),
              ],
            ),
            const SizedBox(height: 15),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardItem(
                  imageAsset: "assets/icons/top_up.png",
                  text: "Local Transfer",
                ),
                CardItem(
                  imageAsset: "assets/icons/bill_payment.png",
                  text: "New Account",
                ),
                CardItem(
                  imageAsset: "assets/icons/wing_mall.png",
                  text: "Loan",
                ),
              ],
            ),
            const SizedBox(height: 15),
            const ContactCard(),
            const SizedBox(height: 15),
            const Text(
              "Promotion",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            Promotion(),
          ],
        ),
      ),
    );
  }
}
