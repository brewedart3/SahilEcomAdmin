import 'package:flutter/material.dart';
import '../model/Category.dart';

class CategoryProvider extends ChangeNotifier {
  List<Category> _categoryList = [];

  List<Category> get categoryList => _categoryList;

  void addCategory(Category category) {
    _categoryList.add(category);
    notifyListeners();
  }
}
