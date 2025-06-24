// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '/custom_code/actions/index.dart';
import '/flutter_flow/custom_functions.dart';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

Future<String?> getFCMaction() async {
  try {
    final FirebaseMessaging fcm = FirebaseMessaging.instance;

    // Check if running on web
    if (kIsWeb) {
      // Web-specific token request with VAPID key
      return await fcm.getToken(
        vapidKey:
            "BARFtpZb6jiGoHIcQz1PBHdXpZFbXQX7KrNMhkV1WDM8XqF1-OWIN8C0jYsM-CfcsMELEkV_7jmH1s3ile-Nit0",
      );
    } else {
      // Mobile (Android/iOS)
      return await fcm.getToken();
    }
  } catch (e) {
    print("FCM token error: $e");
    return null;
  }
}
