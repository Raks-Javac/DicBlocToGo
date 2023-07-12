import 'dart:async';

import 'package:dict_app/core/navigation/navigation_1.0.dart';
import 'package:dict_app/core/navigation/routes.dart';
import 'package:dict_app/core/storage/local_database.dart';
import 'package:dict_app/core/utils/logger.dart';
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

  runInit() {
    //check if user exist in the dataBase
    Logger.logInfo(state);

    Timer(const Duration(seconds: 5), () {
      if (state is NewUser) {
        WNavigator.pushNamedAndClear(WRoutes.onboardUsername);
      } else {
        WNavigator.pushNamedAndClear(WRoutes.mainDashBoardView);
      }
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
    await Future.delayed(const Duration(seconds: 4));
    // final users = wLocalDatabase.isarDBInstance?.collection<User>();
    // final saveUser = User()..username = userNameFieldController.text;
    // await UserRepository().saveUsername(saveUser);
    LoadingDialog.showLoadingState(false);
    // emit(ExistingUser());
    // localNotificationsInstance.showFlutterNotification(
    //     "Welcome onBoard, raks", "HHHH");

    // Logger.logInfo(wLocalDatabase.isarDBInstance ?? "");
  }
}
