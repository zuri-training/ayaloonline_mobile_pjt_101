import 'package:flutter/material.dart';

class LogStatus extends ChangeNotifier {
  LogStatus();

  bool _loggedOut = false;
  void loggedIn(bool loggedIn) {
    _loggedOut = loggedIn;
    notifyListeners();
  }

  bool get status => _loggedOut;
}
