import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:brain_wired_apk/service/app_exceptions.dart';
import 'package:http/http.dart' as http;

import '../model/model.dart';

class BaseClint {
  static const int timeDuration = 20;

  Future<dynamic> getData({required String url}) async {
    final uri = Uri.parse(url);

    try {
      final response =
          await http.get(uri).timeout(const Duration(seconds: timeDuration));

      return _progressResponse(response: response);
    } on SocketException {
      FetchDataException("no Internet connection", url.toString());
    } on TimeoutException {
      ApiNotRespondingException("Api not responding", url);
    }
  }

  dynamic _progressResponse({required http.Response response}) {
    switch (response.statusCode) {
      case 200:
        final body = response.body;
        final List<Users> userList = usersFromJson(body);
        return userList;

      case 400:
        throw BadRequestException(
          utf8.decode(response.bodyBytes),
          response.request!.url.toString(),
        );

      case 401:
      case 403:
        throw UnAutherisedException(
          utf8.decode(response.bodyBytes),
          response.request!.url.toString(),
        );

      case 500:
      default:
        throw FetchDataException(
          "Error occured with code:${response.statusCode}",
          response.request!.url.toString(),
        );
    }
  }
}
