part of 'res.dart';

abstract class DictTheme {
  static ThemeData get lightMode {
    return ThemeData(
        primaryColor: DColors.primaryColor,
        scaffoldBackgroundColor: DColors.white,
        primaryColorDark: DColors.primaryColor,
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
}
