import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wink_bank_clone/screen/Page/biil-payment/item-bill-payment.dart';
import 'package:wink_bank_clone/screen/Page/biil-payment/page/utilities.dart';
import 'package:wink_bank_clone/theme/colors.dart';

class BillPayment extends StatelessWidget {
  const BillPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor.bgColor,
      body: Column(
        children: [
          const SizedBox(height: 50),
          Expanded(
            flex: 5,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    const Text(
                      "Bill Payment",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.autorenew_rounded,
                        color: Colors.white,
                        size: 30,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    width: 500,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                      color: BackgroundColor.colorWhite.withOpacity(0.4),
                    ),
                    child: Image.asset(
                      "assets/images/bill-payment/bill-payment-poster Background Removed.png",
                      fit: BoxFit.cover, // Adjust this as needed
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 18,
            child: Container(
              width: 500,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                color: BackgroundColor.colorWhite_2,
              ),
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, right: 15, left: 15),
                    child: Column(
                      children: [
                        Container(
                          width: 400,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.95),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              width: 1,
                              color: Colors.black.withOpacity(0.2),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5, right: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.search),
                                    ),
                                    Container(
                                      width: 250,
                                      child: const Text(
                                        "Search...",
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ),
                                  ],
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.qr_code),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const Utilities(),
                                      ),
                                    );
                                  },
                                  child: const BillItem(
                                    imagePath:
                                        "assets/images/bill-payment/utilities.png",
                                    title: "Utilities",
                                  ),
                                ),
                                const BillItem(
                                  imagePath:
                                      "assets/images/bill-payment/insurence.png",
                                  title: "Insurance",
                                ),
                                const BillItem(
                                  imagePath:
                                      "assets/images/bill-payment/school.png",
                                  title: "School",
                                ),
                                const BillItem(
                                  imagePath:
                                      "assets/images/bill-payment/donation.png",
                                  title: "Donation & Charity",
                                ),
                              ],
                            ),
                            const Column(
                              children: [
                                BillItem(
                                  imagePath:
                                      "assets/images/bill-payment/finance.png",
                                  title: "Finance",
                                ),
                                BillItem(
                                  imagePath:
                                      "assets/images/bill-payment/internet.png",
                                  title: "Internet & TV",
                                ),
                                BillItem(
                                  imagePath:
                                      "assets/images/bill-payment/SME-business-payment.png",
                                  title: "SME Business Payment",
                                ),
                                BillItem(
                                  imagePath:
                                      "assets/images/bill-payment/postpaid.png",
                                  title: "Position",
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            height: 90,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.9),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                width: 1,
                                color: Colors.black.withOpacity(0.1),
                              ),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.more_horiz,
                                  size: 35,
                                  color: Colors.blue,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  "Others",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
