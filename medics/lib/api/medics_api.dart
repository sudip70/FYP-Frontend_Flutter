import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:medics/api/feedback_sender.dart';
import 'package:medics/models/ambulance.dart';
import 'package:medics/models/medconlist.dart';

const String backendIP = "http://100.64.238.144";

const String signupURL = "$backendIP/signup/";
const String loginURL = "$backendIP/login/";
const String ambulanceURL = "$backendIP/ambulance/";
const String recommendURL = "$backendIP/medconlist/";
const String deleteURL = "$backendIP/account_del/";

Future postlogin(String email, String password) async {
  var requestBody =
      jsonEncode(<String, String>{"email": email, "password": password});
  final response =
      await http.post(Uri.parse(loginURL), headers: header, body: requestBody);

  var resp = json.decode(response.body);
  return resp;
}

storeToken(String data) async {
  FlutterSecureStorage? cacheFile = const FlutterSecureStorage();
  await cacheFile.write(key: 'token', value: data);
}

Future getambulanceDetails() async {
  final response = await http.get(Uri.parse(ambulanceURL), headers: header);

  var resp = json.decode(response.body);
  return AmbulanceInfo.fromJson(resp);
}

tokenAvailable() async {
  FlutterSecureStorage? cacheFile = const FlutterSecureStorage();
  String? savedToken = await cacheFile.read(key: 'token');
  if (savedToken != null) {
    return true;
  } else {
    return false;
  }
}

Future getrecommendation() async {
  final response = await http.get(Uri.parse(recommendURL), headers: header);

  var resp = json.decode(response.body);
  return Medconlist.fromJson(resp);
}

Future deleteUser() async {
  FlutterSecureStorage? cF = const FlutterSecureStorage();
  String? at = await cF.read(key: 'token');
  dynamic authHeader = <String, String>{
    'Content-Type': 'application/json; charset=UTF-8',
    'Authorization': 'Bearer $at',
  };
  await http.delete(Uri.parse(deleteURL), headers: authHeader);
}
