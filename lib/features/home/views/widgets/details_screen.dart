import 'package:dict_app/core/utils/extensions.dart';
import 'package:dict_app/shared/res/res.dart';
import 'package:dict_app/shared/widgets/custom_page_with_app_bar.dart';
import 'package:flutter/material.dart';

class DictionaryWordDetailsScreen extends StatelessWidget {
  const DictionaryWordDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPageWithAppBar(
      appBarBody: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BackButton(
            color: context.appTextTheme.bodyLarge?.color!,
          ),
          addVerticalSpacing(4),
          Row(
            children: [
              Expanded(
                child: Text(
                  "Boy".toUpperCase(),
                  style: context.appTextTheme.titleLarge!.copyWith(
                    color: context.appTheme.primaryColor,
                    fontFamily: WStrings.boldFontName,
                  ),
                ),
              ),
              Row(
                children: [
                  ImageIcon(
                    const AssetImage(
                      nABookMarkIcon,
                    ),
                    color: context.appTheme.primaryColor,
                  ),
                ],
              )
            ],
          ).marginOnly(top: 20, right: 20, left: 20)
        ],
      ),
      extendedBody: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: WColors.barBlackColor,
              child: Column(
                children: [
                  for (int i = 0; i < 3; i++)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${i + 1}. ",
                          style: context.appTextTheme.titleMedium!.copyWith(
                            color: context.appTheme.primaryColor,
                            fontFamily: WStrings.boldFontName,
                          ),
                        ),
                        addHorizontalSpacing(5),
                        const Expanded(
                            child: Text(
                                "Lorem ipsum dolor sit amet consectetur. Nisl nibh cras nunc blandit quis. Mi felis malesuada vel enim consectetur id sed pellentesque. Adipiscing lorem at rutrum turpis purus venenatis etiam sit consectetur. Est adipiscing donec in ut. Quis eu tincidunt massa eget id est consequat blandit felis.")),
                      ],
                    ).marginOnly(bottom: 20)
                ],
              ).paddingSymmetric(horizontal: 15, vertical: 10),
            ),
          ],
        ).marginOnly(top: 20),
      ),
    );
  }
}
