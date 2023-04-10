part of 'res.dart';

enum ThemeEvent { toggleTheme }

abstract class DictTheme {
  static ThemeData get lightMode {
    return ThemeData(
        primaryColor: DColors.primaryColor,
        scaffoldBackgroundColor: DColors.white,
        primaryColorDark: DColors.primaryColor,
        fontFamily: PStrings.mediumFontName,
        bottomSheetTheme: const BottomSheetThemeData(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ))),
        textTheme: TextTheme(
          bodySmall: PTypo.smallTextStyle,
          bodyMedium: PTypo.mediumTextStyle,
          bodyLarge: PTypo.largeTextStyle,
          labelSmall: PTypo.smallTextStyle.copyWith(
            fontFamily: PStrings.boldFontName,
          ),
          labelMedium: PTypo.mediumTextStyle.copyWith(
            fontFamily: PStrings.boldFontName,
          ),
          labelLarge: PTypo.largeTextStyle.copyWith(
            fontFamily: PStrings.boldFontName,
          ),
          displaySmall:
              PTypo.smallTextStyle.copyWith(fontFamily: PStrings.lightFontName),
          displayMedium: PTypo.mediumTextStyle
              .copyWith(fontFamily: PStrings.lightFontName),
          displayLarge:
              PTypo.largeTextStyle.copyWith(fontFamily: PStrings.lightFontName),
        ));
  }

  static ThemeData get darkMode {
    return ThemeData(
        primaryColor: DColors.primaryColor,
        scaffoldBackgroundColor: DColors.darkBAckgroundColor,
        primaryColorDark: DColors.primaryColor,
        fontFamily: PStrings.mediumFontName,
        bottomSheetTheme: const BottomSheetThemeData(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ))),
        textTheme: TextTheme(
          bodySmall: PTypo.smallTextStyle.copyWith(color: DColors.white),
          bodyMedium: PTypo.mediumTextStyle.copyWith(color: DColors.white),
          bodyLarge: PTypo.largeTextStyle.copyWith(color: DColors.white),
          labelSmall: PTypo.smallTextStyle.copyWith(
              fontFamily: PStrings.boldFontName, color: DColors.white),
          labelMedium: PTypo.mediumTextStyle.copyWith(
              fontFamily: PStrings.boldFontName, color: DColors.white),
          labelLarge: PTypo.largeTextStyle.copyWith(
              fontFamily: PStrings.boldFontName, color: DColors.white),
          displaySmall: PTypo.smallTextStyle.copyWith(
              fontFamily: PStrings.lightFontName, color: DColors.white),
          displayMedium: PTypo.mediumTextStyle.copyWith(
              fontFamily: PStrings.lightFontName, color: DColors.white),
          displayLarge: PTypo.largeTextStyle.copyWith(
              fontFamily: PStrings.lightFontName, color: DColors.white),
        ));
  }
}

//cubit

class ThemeBloc extends Bloc<ThemeEvent, ThemeData> {
  ThemeBloc() : super(DictTheme.lightMode);

  bool isDarkMode = false;

  changeTheme() {
    isDarkMode = !isDarkMode;
    // ignore: invalid_use_of_visible_for_testing_member

    emit(isDarkMode == true ? DictTheme.darkMode : DictTheme.lightMode);
  }
}
