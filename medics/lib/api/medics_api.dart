import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:medics/api/feedback_sender.dart';

const String backendIP = "http://192.168.50.91:80";

const String signupURL = "$backendIP/signup/";
const String loginURL = "$backendIP/login/";

Future postlogin(String email, String password) async {
  var requestBody =
      jsonEncode(<String, String>{"email": email, "password": password});
  final response =
      await http.post(Uri.parse(loginURL), headers: header, body: requestBody);

  return json.decode(response.body);
}
