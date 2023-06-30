import 'package:dict_app/core/utils/extensions.dart';
import 'package:dict_app/shared/res/res.dart';
import 'package:dict_app/shared/widgets/custom_page_with_app_bar.dart';
import 'package:flutter/material.dart';

class SettingsMainView extends StatelessWidget {
  const SettingsMainView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPageWithAppBar(
      appBarBody: Text(
        "Settings",
        style: context.appTextTheme.titleLarge!
            .copyWith(color: WColors.white, fontFamily: WStrings.boldFontName),
      ).center.paddingOnly(top: 40),
      extendedBody: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "General",
                textAlign: TextAlign.start,
              ),
            ).marginOnly(left: 20, top: 10),
            addVerticalSpacing(10),
            Container(
              color: WColors.barBlackColor,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Hello"),
                ],
              ).marginSymmetric(horizontal: 20, vertical: 20),
            )
          ],
        ).marginSymmetric(vertical: 20),
      ),
    );
  }
}
