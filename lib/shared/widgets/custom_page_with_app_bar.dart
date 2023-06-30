import 'package:dict_app/shared/res/res.dart';
import 'package:flutter/material.dart';

class CustomPageWithAppBar extends StatelessWidget {
  final Widget extendedBody;
  final Widget appBarBody;
  const CustomPageWithAppBar(
      {super.key, required this.extendedBody, required this.appBarBody});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
            decoration: const BoxDecoration(
              color: WColors.barBlackColor,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            child: appBarBody,
          ),
          Expanded(child: extendedBody)
        ],
      ),
    );
  }
}
