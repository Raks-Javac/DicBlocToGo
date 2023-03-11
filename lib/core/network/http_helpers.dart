import 'package:http/http.dart' as http;

class HttpCustomHandler {
  HttpCustomHandler._();

  static HttpCustomHandler httpInstance = HttpCustomHandler._();
  final String baseUrl = "https://api.dictionaryapi.dev/api/v2/entries";
  Future<http.Response> getInAppRequest(String url) async {
    final request = await http.Client().get(Uri.parse(baseUrl + url));
    print(request.body);
    return request;
  }
}
