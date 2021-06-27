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

class IsLeasor with ChangeNotifier {
  IsLeasor();
  bool _isleassor = false;

  void changeAccount() {
    _isleassor = !_isleassor;
    print(_isleassor);
    notifyListeners();
  }

  bool get isLeassor => _isleassor;
}
