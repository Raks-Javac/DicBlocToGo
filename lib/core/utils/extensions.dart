import 'package:flutter/material.dart';

extension AppTheme on BuildContext {
  ThemeData get appTheme => Theme.of(this);
  Size get appScreenSize => MediaQuery.of(this).size;
  TextTheme get appTextTheme => appTheme.textTheme;
}
