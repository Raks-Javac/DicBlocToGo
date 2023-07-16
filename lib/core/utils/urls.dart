import 'package:dict_app/core/utils/logger.dart';
import 'package:url_launcher/url_launcher.dart';

enum UrlType { phone, web, email }

class WUrls {
  static const String baseUrl = "https://api.dictionaryapi.dev/api/v2/entries";
  static const privacyPolicyUrl = "";
  static const emailUrl = "rufaikudus2014@gmail.com";
  static const phoneNumber = "+2349071018065";

  static lauchUrl(UrlType lauchType, String path,
      {Map<String, String>? emailSchema}) async {
    switch (lauchType) {
      case UrlType.phone:
        final Uri launchUri = Uri(
          scheme: 'tel',
          path: path,
        );
        await launchUrl(launchUri);
        break;
      case UrlType.email:
        String email = Uri.encodeComponent(path);
        String subject = Uri.encodeComponent(emailSchema!['subject']!);
        String body = Uri.encodeComponent(emailSchema['body']!);
        Logger.logInfo(subject); //output: Hello%20Flutter
        Uri mail = Uri.parse("mailto:$email?subject=$subject&body=$body");
        if (await launchUrl(mail)) {
          //email app opened
        } else {
          //email app is not opened
        }
        break;
      case UrlType.web:
        if (!await launchUrl(
          Uri.parse(path),
          mode: LaunchMode.inAppWebView,
          webViewConfiguration:
              const WebViewConfiguration(enableDomStorage: false),
        )) {
          throw Exception('Could not launch $path');
        }
        break;
      default:
        if (!await launchUrl(
          Uri.parse(path),
          mode: LaunchMode.inAppWebView,
          webViewConfiguration:
              const WebViewConfiguration(enableDomStorage: false),
        )) {
          throw Exception('Could not launch $path');
        }
    }
  }
}
