import 'dart:async';

import 'package:dict_app/app_level_locator.dart';
import 'package:dict_app/core/navigation/navigation_1.0.dart';
import 'package:dict_app/core/navigation/routes.dart';
import 'package:dict_app/core/storage/local_database.dart';
import 'package:dict_app/core/utils/logger.dart';
import 'package:dict_app/features/onboarding/entities/username_model.dart';
import 'package:dict_app/features/onboarding/repository/user_repo.dart';
import 'package:dict_app/shared/widgets/loading_state.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class OnBoardingState {}

class AddNewUser extends OnBoardingState {}

class NewUser extends OnBoardingState {}

class ExistingUser extends OnBoardingState {}

class CheckUserKind extends OnBoardingState {}

class EnableButtonFroNewUser extends OnBoardingState {}

class DisEnableButtonFroNewUser extends OnBoardingState {}

class OnBoardingCubit extends Cubit<OnBoardingState> {
  WLocalDatabase wLocalDatabase;
  OnBoardingCubit(this.wLocalDatabase) : super(NewUser());

  TextEditingController userNameFieldController = TextEditingController();

  bool enableButton = false;

  runInit() async {
    //check if user exist in the dataBase
    Timer(const Duration(seconds: 3), () async {
      UserRepository().getCurrentUserName().then((value) {
        if (value.isNotEmpty) emit(ExistingUser());
        if (state is NewUser) {
          WNavigator.pushNamedAndClear(WRoutes.onboardUsername);
        } else {
          WNavigator.pushNamedAndClear(WRoutes.mainDashBoardView);
        }
        Logger.logInfo(state);
        Logger.logInfo("Current username $value");
      });
    });
  }

  //add username to DB

  checkStringAndEnableButton(String userInput) {
    if (userInput.isEmpty) {
      enableButton = false;
      emit(DisEnableButtonFroNewUser());
    }
    if (userInput.isNotEmpty) {
      enableButton = true;
      emit(EnableButtonFroNewUser());
    }
  }

  addUserNameToDB() async {
    LoadingDialog.showLoadingState(true);

    final saveUser = User()..username = userNameFieldController.text;
    await UserRepository().saveUsername(saveUser);

    await Future.delayed(const Duration(seconds: 2));
    localNotificationsInstance.showFlutterNotification(
        "Unlock the Power of Words with WordWise! 🎉📚",
        "Welcome aboard, ${saveUser.username}! Your Personalized Dictionary Experience");
    LoadingDialog.showLoadingState(false);

    emit(ExistingUser());
  }
}
