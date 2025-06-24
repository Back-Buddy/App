import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/firebase_auth/auth_util.dart';

bool? isUsernameValid(String? username) {
  if (username == null) {
    return false;
  }
  final regExp = RegExp(r'^[a-zA-Z0-9]{3,16}$', caseSensitive: false);

  return regExp.hasMatch(username);
}

bool? isDeviceNameValid(String? deviceName) {
  if (deviceName == null) {
    return false;
  }
  final regExp = RegExp(r'^[a-zA-Z0-9\-]{3,16}$', caseSensitive: false);

  return regExp.hasMatch(deviceName);
}

String toUpper(String value) {
  return value.toUpperCase();
}

bool? searchStringVisibility(String? searchString) {
  if (searchString == null) {
    return false;
  }

  if (searchString.trim().isEmpty) {
    return false;
  }

  final regExp = RegExp(r'^[a-zA-Z0-9 ]+$', caseSensitive: false);
  return regExp.hasMatch(searchString);
}

DateTime toDateTime(String dateTimeRaw) {
  return DateTime.parse(dateTimeRaw).toLocal();
}

String formatDateTime(
  DateTime dateTime,
  String pattern,
) {
  var formatter = DateFormat(pattern);
  return formatter.format(dateTime);
}

String formatTimestamp(String timestamp) {
  var splitted = timestamp.split(":");

  int hours = int.parse(splitted[0].split(".")[0]);
  int minutes = int.parse(splitted[1].split(".")[0]);

  int seconds = int.parse(splitted[2].split(".")[0]);
  if (seconds >= 30) minutes += 1;
  return hours.toString().padLeft(2, '0') +
      ":" +
      minutes.toString().padLeft(2, '0');
}

String? thresholdFormatter(double? sliderValue) {
  if (sliderValue == null) return null;

  final formatter = NumberFormat('00');
  final middle = formatter.format(sliderValue.truncate());
  return '00:$middle:00';
}

int getNextPage(int page) {
  return page + 1;
}

String toIso8601(DateTime dateTime) {
  return dateTime.toUtc().toIso8601String();
}

bool isReportNameValid(String? reportName) {
  if (reportName == null) return false;
  final regExp = RegExp(r'^[a-zA-Z0-9 \-]{3,128}$', caseSensitive: false);

  return regExp.hasMatch(reportName);
}

bool isReportStartAndEndTimeValid(
  DateTime? startTime,
  DateTime? endTime,
) {
  if (startTime == null || endTime == null) return false;
  return endTime.isAfter(startTime);
}

DateTime getStartTimeForStreak() {
  return DateTime.now().subtract(const Duration(days: 30));
}

SummarizeLogStruct summarizeLogs(
  DateTime startTime,
  DateTime endTime,
  List<DeviceLogStruct> logs,
) {
  final duration = endTime.difference(startTime);
  final summarizeInterval =
      Duration(milliseconds: (duration.inMilliseconds * 0.2).round());

  List<int> Y = [];
  List<DateTime> X = [];

  DateTime current = startTime;

  while (current.isBefore(endTime)) {
    DateTime next = current.add(summarizeInterval);

    bool found = logs.any((log) =>
        DateTime.parse(log.startTime).toUtc().isAfter(current) &&
        DateTime.parse(log.startTime).toUtc().isBefore(next));

    Y.add(found ? 1 : 0);
    X.add(current);

    current = next;
  }
  return SummarizeLogStruct(xAxis: X, yAxis: Y);
}
