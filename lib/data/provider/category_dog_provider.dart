import 'dart:convert';

import 'package:testing_project/data/model/index.dart';

import 'package:testing_project/utils/api_service.dart';

class CategoryDogProvider {
  final APIClient? apiClient;
  CategoryDogProvider({this.apiClient});

  Future<CategoryDogImageModel> fetchCategoryDogs(
      String categoryName, String subCatName) async {
    String url = "breed/$categoryName/images";
    String url2 = "breed/$categoryName/$subCatName/images";

    final result =
        await apiClient!.generateGetRequest(subCatName == "" ? url : url2);
    CategoryDogImageModel data = CategoryDogImageModel.fromJson(result);
    return data;
  }

  Future<CategoryDogModel> subCatDogs(String categoryName) async {
    String url = "breed/$categoryName/list";

    final result = await apiClient!.generateGetRequest(url);
    CategoryDogModel data = CategoryDogModel.fromJson(result);
    return data;
  }
}
