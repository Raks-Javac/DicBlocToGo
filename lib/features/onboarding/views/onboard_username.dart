import 'package:dict_app/core/navigation/navigation_1.0.dart';
import 'package:dict_app/core/navigation/routes.dart';
import 'package:dict_app/core/utils/extensions.dart';
import 'package:dict_app/features/onboarding/bloc/onboarding_provider.dart';
import 'package:dict_app/shared/res/res.dart';
import 'package:dict_app/shared/widgets/render_assets.dart';
import 'package:dict_app/shared/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnBoardUserName extends StatelessWidget {
  const OnBoardUserName({super.key});

  @override
  Widget build(BuildContext context) {
    final onBoardingInstance = BlocProvider.of<OnBoardingCubit>(context);
    return Scaffold(
      body: BlocConsumer<OnBoardingCubit, OnBoardingState>(
        bloc: onBoardingInstance,
        listener: (context, state) {
          if (state is ExistingUser) {
            WNavigator.pushNamedAndClear(WRoutes.mainDashBoardView);
          }
        },
        builder: (
          context,
          consumerState,
        ) =>
            SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                addVerticalSpacing(10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    addVerticalSpacing(30),
                    const WWidgetsRenderSvg(
                      svgPath: nADarkModeIconSvg,
                    ),
                    addVerticalSpacing(10),
                    Text(
                      "WordWise",
                      style: context.appTextTheme.displayLarge?.copyWith(
                        fontFamily: WStrings.boldFontName,
                      ),
                    ),
                    addVerticalSpacing(5),
                    Text(
                      "What would you like us to call you?",
                      style: context.appTextTheme.bodyMedium,
                    ),
                    addVerticalSpacing(30),
                  ],
                ),
                //lan
                addVerticalSpacing(60),
                if (onBoardingInstance.enableButton == true)
                  Text(
                    "Username",
                    style: context.appTextTheme.bodySmall
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                addVerticalSpacing(15),
                PWidgetTextFieldInDarkState(
                  maxLength: 6,
                  hintText: "Username",
                  onChanged: (val) {
                    onBoardingInstance.checkStringAndEnableButton(val);
                  },
                  textEditingController:
                      onBoardingInstance.userNameFieldController,
                ),

                addVerticalSpacing(40),

                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: PWidgetsButton(
                      isEnabled: onBoardingInstance.enableButton,
                      label: "Done",
                      onPressed: () {
                        onBoardingInstance.addUserNameToDB();
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
