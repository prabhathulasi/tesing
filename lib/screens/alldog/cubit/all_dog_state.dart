part of 'all_dog_cubit.dart';

class AllDogState {
  final PageStatus status;
  final AllDogsModel? data;
  final RandomDogModel? image;
  final String? errorMessage;
  const AllDogState({
    required this.status,
    this.data,
    this.image,
    this.errorMessage,
  });
  factory AllDogState.initial() {
    return const AllDogState(
      status: PageStatus.initial,
    );
  }
  factory AllDogState.data(AllDogsModel data, RandomDogModel image) {
    return AllDogState(status: PageStatus.success, data: data, image: image);
  }
  factory AllDogState.error(String message) {
    return AllDogState(
      status: PageStatus.error,
      errorMessage: message,
    );
  }
}
