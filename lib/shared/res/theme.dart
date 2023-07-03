part of 'res.dart';

enum ThemeEvent { toggleTheme }

abstract class DictTheme {
  static ThemeData get lightMode {
    return ThemeData(
        primaryColor: WColors.primaryColor,
        scaffoldBackgroundColor: WColors.white,
        primaryColorDark: WColors.primaryColor,
        fontFamily: WStrings.mediumFontName,
        checkboxTheme: customCheckboxThemeDatawhiteMode,
        bottomSheetTheme: const BottomSheetThemeData(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ))),
        textTheme: TextTheme(
          bodySmall: WTypo.smallTextStyle,
          bodyMedium: WTypo.mediumTextStyle,
          bodyLarge: WTypo.largeTextStyle,
          labelSmall: WTypo.smallTextStyle.copyWith(
            fontFamily: WStrings.boldFontName,
          ),
          labelMedium: WTypo.mediumTextStyle.copyWith(
            fontFamily: WStrings.boldFontName,
          ),
          labelLarge: WTypo.largeTextStyle.copyWith(
            fontFamily: WStrings.boldFontName,
          ),
          displaySmall:
              WTypo.smallTextStyle.copyWith(fontFamily: WStrings.lightFontName),
          displayMedium: WTypo.mediumTextStyle
              .copyWith(fontFamily: WStrings.lightFontName),
          displayLarge:
              WTypo.largeTextStyle.copyWith(fontFamily: WStrings.lightFontName),
        ));
  }

  static ThemeData get darkMode {
    return ThemeData(
        primaryColor: WColors.primaryColor,
        scaffoldBackgroundColor: WColors.darkBAckgroundColor,
        primaryColorDark: WColors.primaryColor,
        fontFamily: WStrings.mediumFontName,
        checkboxTheme: customCheckboxThemeDataDaarkMode,
        bottomSheetTheme: const BottomSheetThemeData(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ))),
        textTheme: TextTheme(
          bodySmall: WTypo.smallTextStyle.copyWith(color: WColors.white),
          bodyMedium: WTypo.mediumTextStyle.copyWith(color: WColors.white),
          bodyLarge: WTypo.largeTextStyle.copyWith(color: WColors.white),
          labelSmall: WTypo.smallTextStyle.copyWith(
              fontFamily: WStrings.boldFontName, color: WColors.white),
          labelMedium: WTypo.mediumTextStyle.copyWith(
              fontFamily: WStrings.boldFontName, color: WColors.white),
          labelLarge: WTypo.largeTextStyle.copyWith(
              fontFamily: WStrings.boldFontName, color: WColors.white),
          displaySmall: WTypo.smallTextStyle.copyWith(
              fontFamily: WStrings.lightFontName, color: WColors.white),
          displayMedium: WTypo.mediumTextStyle.copyWith(
              fontFamily: WStrings.lightFontName, color: WColors.white),
          displayLarge: WTypo.largeTextStyle.copyWith(
              fontFamily: WStrings.lightFontName, color: WColors.white),
        ));
  }

  static CheckboxThemeData customCheckboxThemeDataDaarkMode = CheckboxThemeData(
    side: const BorderSide(color: WColors.white), // s
    shape: RoundedRectangleBorder(
      side: const BorderSide(
          color: WColors.white), // Set the desired border color here
      borderRadius:
          BorderRadius.circular(5.0), // Set the desired border radius if needed
    ),
  );

  static CheckboxThemeData customCheckboxThemeDatawhiteMode = CheckboxThemeData(
    side: const BorderSide(color: WColors.white), //
    shape: RoundedRectangleBorder(
      side: const BorderSide(
          color: WColors.white), // Set the desired border color here
      borderRadius:
          BorderRadius.circular(5.0), // Set the desired border radius if needed
    ),
  );
}

//cubit

class ThemeBloc extends Bloc<ThemeEvent, ThemeData> {
  ThemeBloc() : super(DictTheme.darkMode);

  bool isDarkMode = false;

  changeTheme() {
    isDarkMode = !isDarkMode;
    // ignore: invalid_use_of_visible_for_testing_member

    emit(isDarkMode == true ? DictTheme.darkMode : DictTheme.lightMode);
  }
}
