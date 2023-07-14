import 'package:dict_app/core/navigation/navigation_1.0.dart';
import 'package:dict_app/core/utils/extensions.dart';
import 'package:dict_app/core/utils/helper_functions.dart';
import 'package:dict_app/features/home/blocs/home_bloc.dart';
import 'package:dict_app/features/onboarding/bloc/onboarding_provider.dart';
import 'package:dict_app/shared/res/res.dart';
import 'package:dict_app/shared/widgets/custom_page_with_app_bar.dart';
import 'package:dict_app/shared/widgets/render_assets.dart';
import 'package:dict_app/shared/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      extendedBody: GestureDetector(
        onTap: () {
          dissmissKeyboard();
        },
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //general section
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
                  children: [
                    SettingsTile(
                      iconPathSvg: nAUsernameIcon,
                      onTap: () {
                        showDialog(
                            barrierColor:
                                WColors.barBlackColor.withOpacity(0.5),
                            context: context,
                            builder: (context) {
                              final onBoardingInstance =
                                  BlocProvider.of<OnBoardingCubit>(context,
                                      listen: true);
                              return Dialog(
                                backgroundColor: WColors.barBlackColor,
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10)),
                                  height: 202.h,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text("Username"),
                                          addVerticalSpacing(20),
                                          PWidgetTextFieldInDarkState(
                                            maxLength: 6,
                                            hintText: "Username",
                                            onChanged: (val) {
                                              onBoardingInstance
                                                  .checkStringAndEnableButton(
                                                      val);
                                            },
                                            textEditingController:
                                                onBoardingInstance
                                                    .userNameFieldController,
                                          ),
                                          addVerticalSpacing(20),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 8.0),
                                            child: PWidgetsButton(
                                                isEnabled: onBoardingInstance
                                                    .enableButton,
                                                label: "Save",
                                                onPressed: () {
                                                  onBoardingInstance
                                                      .updateUserNameToDB();
                                                  WNavigator.pop();
                                                  onBoardingInstance
                                                      .userNameFieldController
                                                      .clear();
                                                }),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ).paddingAll(20),
                              );
                            });
                      },
                      tileTitle: 'Username',
                      preText:
                          context.watch<HomeActivityBloc>().state.username ??
                              "",
                    ),
                    addVerticalSpacing(5),
                    Divider(
                      color: WColors.white.withOpacity(0.4),
                    ),
                    addVerticalSpacing(20),
                    SettingsTile(
                      iconPathSvg: nAPrivacyPolicyIcon,
                      onTap: () {},
                      tileTitle: 'Privacy policy',
                      preText: "",
                    ),
                    Divider(
                      color: WColors.white.withOpacity(0.4),
                    ),
                    addVerticalSpacing(20),
                    SettingsTile(
                      iconPathSvg: nAAboutIcon,
                      onTap: () {},
                      tileTitle: 'About',
                      preText: "",
                    ),
                    addVerticalSpacing(5),
                    Divider(
                      color: WColors.white.withOpacity(0.4),
                    ),
                  ],
                ).marginSymmetric(horizontal: 20, vertical: 20),
              )
              //support section

              ,
              addVerticalSpacing(10),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Support",
                  textAlign: TextAlign.start,
                ),
              ).marginOnly(left: 20, top: 10),
              addVerticalSpacing(10),
              Container(
                color: WColors.barBlackColor,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SettingsTile(
                      iconPathSvg: nAEmailIcon,
                      onTap: () {},
                      tileTitle: 'Email',
                      preText: "rufaikudus2014@gmail.com",
                    ),
                    addVerticalSpacing(5),
                    Divider(
                      color: WColors.white.withOpacity(0.4),
                    ),
                    addVerticalSpacing(20),
                    SettingsTile(
                      iconPathSvg: nAPhoneNumber,
                      onTap: () {},
                      tileTitle: 'Phone',
                      preText: "+234 9071018065",
                    ),
                    addVerticalSpacing(5),
                    Divider(
                      color: WColors.white.withOpacity(0.4),
                    ),
                  ],
                ).marginSymmetric(horizontal: 20, vertical: 20),
              )
            ],
          ).marginSymmetric(vertical: 20),
        ),
      ),
    );
  }
}

class SettingsTile extends StatelessWidget {
  final String iconPathSvg;
  final String? preText;
  final String tileTitle;
  final Function()? onTap;
  const SettingsTile({
    super.key,
    required this.tileTitle,
    required this.iconPathSvg,
    this.preText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap!(),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                WWidgetsRenderSvg(svgPath: iconPathSvg),
                addHorizontalSpacing(10),
                Text(tileTitle),
              ],
            ),
          ),
          Row(
            children: [
              Text(
                preText ?? "",
              ),
              addHorizontalSpacing(8),
              const WWidgetsRenderSvg(svgPath: nAarrowForward),
            ],
          )
        ],
      ),
    );
  }
}
