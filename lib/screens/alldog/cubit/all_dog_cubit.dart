import 'package:bloc/bloc.dart';
import 'package:testing_project/data/repository/all_dog_repository.dart';
import 'package:testing_project/data/model/index.dart';

import '../../../data/enum/page_status.dart';

part 'all_dog_state.dart';

class AllDogCubit extends Cubit<AllDogState> {
  final AllDogRepository repository;

  AllDogCubit({
    required this.repository,
  }) : super(AllDogState.initial());

  Future<void> fetchDetail() async {
    emit(AllDogState.initial());
    try {
      final data = await repository.fetchdetails();
      final image = await repository.randomDog();

      emit(AllDogState.data(data, image));
    } catch (e) {
      emit(AllDogState.error(e.toString()));
    }
  }
}
