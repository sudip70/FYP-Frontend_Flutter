import 'package:http/http.dart' as http;
import 'dart:convert';

class loginapi {
  Future<LoginApiResponse> apiLogin(Map<String, String> param) async {
    var url = Uri.parse('http://192.168.18.9/login/');
    var response = await http.post(url, body: param);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    final data = jsonDecode(response.body);
    return LoginApiResponse(
        access_token: data["access_token"],
        msg: data["msg"],
        success: data["success"]);
  }
}

class LoginApiResponse {
  final String? access_token;
  final String? msg;
  final String? success;

  LoginApiResponse({this.access_token, this.msg, this.success});
}
