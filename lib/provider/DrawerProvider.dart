import 'package:flutter/material.dart';

class DrawerProvider extends ChangeNotifier {
  bool _isDrawerOpen = false;

  bool get isDrawerOpen => _isDrawerOpen;

  void toggleDrawer() {
    _isDrawerOpen = !_isDrawerOpen;
    notifyListeners();
  }

  void closeDrawer() {
    _isDrawerOpen = false;
    notifyListeners();
  }
}
