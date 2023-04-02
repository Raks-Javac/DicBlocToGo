import 'package:dict_app/core/navigation/go_router.dart';
import 'package:dict_app/core/utils/extensions.dart';
import 'package:dict_app/shared/res/res.dart';
import 'package:dict_app/shared/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LanguageView extends StatefulWidget {
  const LanguageView({super.key});

  @override
  State<LanguageView> createState() => _LanguageViewState();
}

class _LanguageViewState extends State<LanguageView> {
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
              Align(
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Welcome",
                        style: context.appTextTheme.bodyMedium?.copyWith(
                          fontSize: 18,
                        )),
                    addVerticalSpacing(10),
                    Text(
                      "To",
                      style: context.appTextTheme.bodyMedium?.copyWith(
                        fontSize: 18,
                      ),
                    ),
                    addVerticalSpacing(3),
                    Image.asset(
                      nALogo,
                      width: 150,
                      height: 50,
                    ),
                    addVerticalSpacing(30),
                    Image.asset(
                      nAonBoardIllustration,
                      width: context.appScreenSize.width,
                      height: context.appScreenSize.height / 4.5,
                    ),
                  ],
                ),
              ),
              //lan
              addVerticalSpacing(60),
              Text(
                "Select a language",
                style: context.appTextTheme.bodyMedium?.copyWith(
                  fontSize: 13,
                ),
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
                      GoRouter.of(context).pushReplacement(dictionaryHomeRoute);
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
