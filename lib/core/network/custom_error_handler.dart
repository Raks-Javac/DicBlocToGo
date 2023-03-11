import 'dart:io';

class CustomRequestErrorHandler extends HttpException {
  CustomRequestErrorHandler(super.message);
}
