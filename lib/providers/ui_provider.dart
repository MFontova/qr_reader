import 'package:flutter/material.dart';

class UiProvider extends ChangeNotifier {
  int _selectedMenuOpt = 0;

  String _qrText = '';

  int get selectedMenuOpt {
    return this._selectedMenuOpt;
  }

  set selectedMenuOpt(int i) {
    _selectedMenuOpt = i;
    notifyListeners();
  }

  String get qrText {
    return _qrText;
  }

  set qrText(String text) {
    _qrText = text;
    notifyListeners();
  }
}
