import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _refreshTrigger = false;
  bool get refreshTrigger => _refreshTrigger;
  set refreshTrigger(bool value) {
    _refreshTrigger = value;
  }

  bool _reportDeleted = false;
  bool get reportDeleted => _reportDeleted;
  set reportDeleted(bool value) {
    _reportDeleted = value;
  }
}
