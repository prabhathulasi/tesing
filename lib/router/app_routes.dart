import 'package:flutter/material.dart';
import 'package:testing_project/screens/alldog/view/all_dog_view.dart';
import 'package:testing_project/screens/categorydogs/view/category_dog_view.dart';
import 'package:testing_project/screens/categorydogs/view/sub_category_view.dart';

class AppRouter {
  static MaterialPageRoute login() {
    return _generateMaterialRoute(
      page: const AllDogScreen(),
    );
  }

  static MaterialPageRoute catScreen(String catName) {
    return _generateMaterialRoute(
      page: CategoryScreen(
        categoryName: catName,
      ),
    );
  }

  static MaterialPageRoute subCatScreen(String catName, String subCatNme) {
    return _generateMaterialRoute(
      page: SubCategoryScreen(
        catName: catName,
        subCatDogName: subCatNme,
      ),
    );
  }

  static MaterialPageRoute _generateMaterialRoute({required Widget page}) =>
      MaterialPageRoute(
        builder: (_) => page,
      );
}
