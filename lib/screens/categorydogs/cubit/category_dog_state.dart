part of 'category_dog_cubit.dart';

class CategoryDogState {
  final PageStatus status;
  final CategoryDogImageModel? image;
  final CategoryDogModel? data;
  final String? errorMessage;
  const CategoryDogState({
    required this.status,
    this.image,
    this.data,
    this.errorMessage,
  });
  factory CategoryDogState.initial() {
    return const CategoryDogState(
      status: PageStatus.initial,
    );
  }
  factory CategoryDogState.data(
      CategoryDogImageModel image, CategoryDogModel data) {
    return CategoryDogState(
        status: PageStatus.success, image: image, data: data);
  }
  factory CategoryDogState.error(String message) {
    return CategoryDogState(
      status: PageStatus.error,
      errorMessage: message,
    );
  }
}
