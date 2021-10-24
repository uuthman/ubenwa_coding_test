import 'package:flutter/cupertino.dart';
import 'package:ubenwa_coding_test/models/onboarding.dart';

class OnboardingViewModel extends ChangeNotifier{

  List<Onboarding> _items = [];
  List<Onboarding> get items => _items;

  OnboardingViewModel(){
    _items = onboardingItems();
  }

  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  setCurrentIndex(int index){
    _currentIndex = index;
    notifyListeners();
  }


}