import 'package:testing_project/data/model/index.dart';
import 'package:testing_project/data/provider/index.dart';

class CategoryDogRepository {
  final CategoryDogProvider? provider;

  CategoryDogRepository({this.provider});
  Future<CategoryDogImageModel> fetchdetails(
      String categoryname, String subCatName) {
    return provider!.fetchCategoryDogs(categoryname, subCatName);
  }

  Future<CategoryDogModel> subCatNames(String catNames) {
    return provider!.subCatDogs(catNames);
  }
}
