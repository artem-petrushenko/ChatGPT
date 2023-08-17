import 'package:flutter/cupertino.dart';

class MainViewModel extends ChangeNotifier {
  int _selectIndex = 1;

  int get selectIndex => _selectIndex;

  set setSelectIndex(int selectIndex) {
    _selectIndex = selectIndex;
    notifyListeners();
  }
}
