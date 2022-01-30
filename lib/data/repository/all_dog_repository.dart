import 'package:testing_project/data/model/index.dart';
import 'package:testing_project/data/provider/index.dart';

class AllDogRepository {
  final AllDogProvider? provider;

  AllDogRepository({this.provider});
  Future<AllDogsModel> fetchdetails() {
    return provider!.fetchDogs();
  }

  Future<RandomDogModel> randomDog() {
    return provider!.randomDogs();
  }
}
