import 'package:flutter/material.dart';
import 'package:wink_bank_clone/screen/home/main/appBar.dart';

import 'body.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  @override
  State<MainScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: appBarScreen(context),
          body: BodyScreen(),
        )
      ],
    );
  }
}
