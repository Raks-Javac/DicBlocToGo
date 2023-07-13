import 'package:flutter/services.dart';

dissmissKeyboard() {
  return SystemChannels.textInput.invokeMethod('TextInput.hide');
}
