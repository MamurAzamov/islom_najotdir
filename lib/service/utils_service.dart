import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:islom_najotdir/service/pref_service.dart';
import 'package:platform_device_id/platform_device_id.dart';

class Utils {
  static showToast(String msg) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.white,
        textColor: Colors.black,
        timeInSecForIosWeb: 1,
        fontSize: 16.0);
  }

  static Future<bool> dialogCommon(
      BuildContext context, String title, String message, bool isSingle) async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title),
            content: Text(message),
            actions: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: !isSingle
                          ? MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(false);
                              },
                              color: Colors.red,
                              child: const Text(
                                "Yo'q",
                                style: TextStyle(color: Colors.white),
                              ),
                            )
                          : const SizedBox.shrink(),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.of(context).pop(true);
                        },
                        color: Colors.green,
                        child: const Text(
                          "Ha",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          );
        });
  }

  static Future<Map<String, dynamic>> deviceParams() async {
    Map<String, String> params = {};
    var getDeviceId = await PlatformDeviceId.getDeviceId;
    String fcmToken = await Prefs.loadFCM();

    if (Platform.isIOS) {
      params.addAll({
        'device_id': getDeviceId!,
        'device_type': "I",
        'device_token': fcmToken,
      });
    } else {
      params.addAll({
        'device_id': getDeviceId!,
        'device_type': "A",
        'device_token': fcmToken,
      });
    }
    return params;
  }
}
