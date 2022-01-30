import 'package:testing_project/data/model/index.dart';

import 'package:testing_project/utils/api_service.dart';

class AllDogProvider {
  final APIClient? apiClient;
  AllDogProvider({this.apiClient});

  Future<AllDogsModel> fetchDogs() async {
    const url = "breeds/list/all";

    final result = await apiClient!.generateGetRequest(url);
    AllDogsModel data = AllDogsModel.fromJson(result);
    return data;
  }

  Future<RandomDogModel> randomDogs() async {
    const url = "breeds/image/random";

    final result = await apiClient!.generateGetRequest(url);
    RandomDogModel data = RandomDogModel.fromJson(result);
    return data;
  }
}
