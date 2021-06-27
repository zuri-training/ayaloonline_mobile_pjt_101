import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ProfileDetailDateState with ChangeNotifier {
  ProfileDetailDateState();

  DateTime _selectedDate = DateTime.now();

  void setDate(DateTime inputDate) {
    _selectedDate = inputDate;
    print('selected date $_selectedDate');
    notifyListeners();
  }

  String get dateSelected => DateFormat('dd/MM/yyyy').format(_selectedDate);
}

class ProfileDetailDaysSelection with ChangeNotifier {
  ProfileDetailDaysSelection();

  String _selectedDays = '1 Day';

  void setDays(String value) {
    _selectedDays = value;
    print(_selectedDays);
    notifyListeners();
  }

  String get getDays => _selectedDays;
}

class ProfileDetailTimeSelection with ChangeNotifier {
  ProfileDetailTimeSelection();

  TimeOfDay _selectedTime = TimeOfDay.now();

  void setTime(TimeOfDay value) {
    _selectedTime = value;
    print(_selectedTime);
    notifyListeners();
  }

  String getTime(BuildContext context) {
    return _selectedTime.format(context).toString();
  }
}

class ProfileDetailDelivery with ChangeNotifier {
  ProfileDetailDelivery();

  String _selectedDelivery = 'Door Delivery';

  void setDelivery(String value) {
    _selectedDelivery = value;
    notifyListeners();
  }

  String get getDelivery => _selectedDelivery;
}

class VerificationChecker with ChangeNotifier {
  VerificationChecker();

  bool _verified = true;

  void setStatus() {
    _verified = !_verified;

    notifyListeners();
  }

  bool get getStatus => _verified;
}
