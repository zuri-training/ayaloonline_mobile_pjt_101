import 'package:flutter/cupertino.dart';

class HomePageIndex with ChangeNotifier {
  HomePageIndex();

  int _index = 0;
  void setIndex(int inputIndex) {
    _index = inputIndex;
    notifyListeners();
  }

  int get index => _index;
}
