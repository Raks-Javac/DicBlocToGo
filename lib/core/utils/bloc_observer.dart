import 'package:dict_app/core/utils/logger.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocObserver extends BlocObserver {
  AppBlocObserver._();
  static AppBlocObserver instance = AppBlocObserver._();

  factory AppBlocObserver.internal() {
    return instance;
  }
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    Logger.logInfo('${bloc.runtimeType} $change');
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);

    Logger.logInfo('${bloc.runtimeType} $event');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    Logger.logInfo('${bloc.runtimeType} $transition');
  }
}
