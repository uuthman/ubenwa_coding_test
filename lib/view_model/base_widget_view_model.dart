import 'package:flutter/material.dart';

class BaseWidgetViewModel extends ChangeNotifier{

  bool _switchUser = true;
  bool get switchUser => _switchUser;

  setSwitchUser(bool isSwitched){
    _switchUser = isSwitched;
    notifyListeners();
  }
  
}