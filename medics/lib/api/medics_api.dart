import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:medics/api/feedback_sender.dart';
import 'package:medics/models/ambulance.dart';
import 'package:medics/models/bloodreq.dart';
import 'package:medics/models/covid.dart';
import 'package:medics/models/doctors.dart';
import 'package:medics/models/hiv.dart';
import 'package:medics/models/hospitals.dart';
import 'package:medics/models/medconlist.dart';
import 'package:medics/models/std.dart';

const String backendIP = "http://192.168.18.9";

const String signupURL = "$backendIP/signup/";
const String loginURL = "$backendIP/login/";
const String ambulanceURL = "$backendIP/ambulance/";
const String hospitalURL = "$backendIP/hospital/";
const String doctorURL = "$backendIP/doctor/";
const String covidURL = "$backendIP/covid/";
const String hivURL = "$backendIP/hiv/";
const String stdURL = "$backendIP/std/";
const String bloodreqURL = "$backendIP/bloodreq/";
const String postreqURL = "$backendIP/postreq/";
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

Future gethospitalDetails() async {
  final response = await http.get(Uri.parse(hospitalURL), headers: header);

  var resp = json.decode(response.body);
  return HospitalInfo.fromJson(resp);
}

Future getdoctorDetails() async {
  final response = await http.get(Uri.parse(doctorURL), headers: header);

  var resp = json.decode(response.body);
  return DoctorInfo.fromJson(resp);
}

Future getcovidDetails() async {
  final response = await http.get(Uri.parse(covidURL), headers: header);

  var resp = json.decode(response.body);
  return CovidInfo.fromJson(resp);
}

Future gethivDetails() async {
  final response = await http.get(Uri.parse(hivURL), headers: header);

  var resp = json.decode(response.body);
  return HivInfo.fromJson(resp);
}

Future getstdDetails() async {
  final response = await http.get(Uri.parse(stdURL), headers: header);

  var resp = json.decode(response.body);
  return StdInfo.fromJson(resp);
}

Future getbloodreqDetails() async {
  final response = await http.get(Uri.parse(bloodreqURL), headers: header);

  var resp = json.decode(response.body);
  return BloodReqInfo.fromJson(resp);
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
  final response = await http.delete(Uri.parse(deleteURL), headers: authHeader);
  var resp = json.decode(response.body);
  return resp;
}
