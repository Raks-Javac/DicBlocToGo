import 'package:dict_app/core/navigation/navigation_1.0.dart';
import 'package:dict_app/core/utils/extensions.dart';
import 'package:dict_app/features/onboarding/bloc/onboarding_provider.dart';
import 'package:dict_app/shared/res/res.dart';
import 'package:dict_app/shared/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WDialogs {
  static showUserNameDialog(BuildContext context) {
    showDialog(
        barrierColor: WColors.barBlackColor.withOpacity(0.5),
        context: context,
        builder: (context) {
          final onBoardingInstance =
              BlocProvider.of<OnBoardingCubit>(context, listen: true);
          return Dialog(
            backgroundColor: WColors.barBlackColor,
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              height: 202.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Username"),
                      addVerticalSpacing(20),
                      PWidgetTextFieldInDarkState(
                        maxLength: 8,
                        hintText: "Username",
                        onChanged: (val) {
                          onBoardingInstance.checkStringAndEnableButton(val);
                        },
                        textEditingController:
                            onBoardingInstance.userNameFieldController,
                      ),
                      addVerticalSpacing(20),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: PWidgetsButton(
                            isEnabled: onBoardingInstance.enableButton,
                            label: "Save",
                            onPressed: () {
                              if (onBoardingInstance
                                  .userNameFieldController.text.isNotEmpty) {
                                onBoardingInstance.updateUserNameToDB();
                                WNavigator.pop();
                                onBoardingInstance.userNameFieldController
                                    .clear();
                              }
                            }),
                      ),
                    ],
                  ),
                ],
              ),
            ).paddingAll(20),
          );
        });
  }

  //show deleteDialog

  static showDeleteDialog() {}
}
