import 'dart:async';

import 'package:dict_app/core/navigation/go_router.dart';
import 'package:dict_app/shared/res/res.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({super.key});

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      GoRouter.maybeOf(context)
          ?.pushReplacement("$initialHomeRoute$languageViewRoute");
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          nALogo,
          width: 200,
          height: 160,
        ),
      ),
    );
  }
}
