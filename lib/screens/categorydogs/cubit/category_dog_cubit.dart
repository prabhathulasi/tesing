import 'package:bloc/bloc.dart';
import 'package:testing_project/data/repository/category_dog_repository.dart';
import 'package:testing_project/data/model/index.dart';

import '../../../data/enum/page_status.dart';

part 'category_dog_state.dart';

class CategoryDogCubit extends Cubit<CategoryDogState> {
  final CategoryDogRepository repository;
  final String categoryName;
  final String subCatName;

  CategoryDogCubit(
      {required this.repository,
      required this.categoryName,
      required this.subCatName})
      : super(CategoryDogState.initial()) {
    fetchDetail();
  }

  Future<void> fetchDetail() async {
    emit(CategoryDogState.initial());
    try {
      final image = await repository.fetchdetails(categoryName, subCatName);
      final data = await repository.subCatNames(categoryName);

      emit(CategoryDogState.data(image, data));
    } catch (e) {
      emit(CategoryDogState.error(e.toString()));
    }
  }
}
