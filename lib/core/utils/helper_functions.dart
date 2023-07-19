import 'package:dict_app/core/storage/general_entities/phonetics.dart';
import 'package:flutter/services.dart';

dissmissKeyboard() {
  return SystemChannels.textInput.invokeMethod('TextInput.hide');
}

//loop though phoneics and get the audio out
String? loopThroughPhoneticsAndGetAvailableAudio(List<Phonetic> phonetics) {
  List<String> audioUrls = [];

  for (var i in phonetics) {
    audioUrls.add(i.audio ?? "");
  }

  if (audioUrls.isNotEmpty) {
    return audioUrls[0];
  } else {
    return null;
  }
}
