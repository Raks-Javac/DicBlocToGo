import 'package:dict_app/core/navigation/navigation_1.0.dart';
import 'package:dict_app/core/navigation/routes.dart';
import 'package:dict_app/core/utils/extensions.dart';
import 'package:dict_app/shared/res/res.dart';
import 'package:dict_app/shared/widgets/render_assets.dart';
import 'package:dict_app/shared/widgets/widgets.dart';
import 'package:flutter/material.dart';

class OnBoardUserName extends StatefulWidget {
  const OnBoardUserName({super.key});

  @override
  State<OnBoardUserName> createState() => _OnBoardUserNameState();
}

class _OnBoardUserNameState extends State<OnBoardUserName> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
              Text(
                "Username",
                style: context.appTextTheme.bodySmall
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              addVerticalSpacing(9),
              PWidgetsDropDown(
                items: const [
                  "English",
                  "Chinese",
                  "Portugese",
                ],
                suffixIcon: UnconstrainedBox(
                  child: Image.asset(
                    nADropDownIcon,
                    width: 17,
                    height: 17,
                  ),
                ),
                hintText: "Select your preferred language",
                onChanged: (dynamic val) {},
              ),

              addVerticalSpacing(40),

              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: PWidgetsButton(
                    label: "Done",
                    onPressed: () {
                      WNavigator.pushNamedReplacement(
                          WRoutes.mainDashBoardView);
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
