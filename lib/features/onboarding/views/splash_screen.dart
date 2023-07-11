import 'package:dict_app/features/onboarding/bloc/onboarding_provider.dart';
import 'package:dict_app/shared/res/res.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({super.key});

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  @override
  void initState() {
    BlocProvider.of<OnBoardingCubit>(context).runInit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WColors.primaryColor,
      body: Center(
        child: Image.asset(
          nALightGreenLogo,
          width: 76.w,
          height: 76.h,
        ),
      ),
    );
  }
}
