// ignore_for_file: use_build_context_synchronously

import 'dart:convert';
import 'package:assignment/constants/error_handling.dart';
import 'package:assignment/constants/utils.dart';
import 'package:assignment/features/Login/Screens/verify.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<String> getId() async {
  var deviceInfo = DeviceInfoPlugin();
  var androidDeviceInfo = await deviceInfo.androidInfo;
  return androidDeviceInfo.id; // unique ID on Android
}

class OTPService {
  // sign in user
  void signInUser({
    required BuildContext context,
    required String number,
    required String countryCode,
  }) async {
    try {
      String deviceId = await getId();
      http.Response res = await http.post(
          Uri.parse('https://api.ourgoodspace.com/api/d2/auth/v2/login'),
          body: jsonEncode({'number': number, 'countryCode': countryCode}),
          headers: <String, String>{
            'Content-Type': "application/json; charset=UTF-8",
            'Authorization': "Bearer Token",
            'device-id': deviceId,
            'device-type': "android"
          });

      if (kDebugMode) {
        print(res.body);
      }

      httpErrorHandle(
          response: res,
          context: context,
          onSuccess: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => VerifyScreen(number: number,)));
          });
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }
}
