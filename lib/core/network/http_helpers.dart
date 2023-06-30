import 'package:dict_app/core/utils/logger.dart';
import 'package:dict_app/core/utils/urls.dart';
import 'package:http/http.dart' as http;

class HttpCustomHandler {
  HttpCustomHandler._();

  static HttpCustomHandler httpInstance = HttpCustomHandler._();

  Future<http.Response> getInAppRequest(String url) async {
    final request = await http.Client().get(Uri.parse(WUrls.baseUrl + url));
    Logger.logInfo(request.body);
    return request;
  }
}
