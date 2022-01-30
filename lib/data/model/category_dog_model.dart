class CategoryDogModel {
  List<String>? message;
  String? status;

  CategoryDogModel({this.message, this.status});

  CategoryDogModel.fromJson(Map<String, dynamic> json) {
    message = json['message'].cast<String>();
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['message'] = message;
    data['status'] = status;
    return data;
  }
}

class CategoryDogImageModel {
  List<String>? message;
  String? status;

  CategoryDogImageModel({this.message, this.status});

  CategoryDogImageModel.fromJson(Map<String, dynamic> json) {
    message = json['message'].cast<String>();
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['message'] = message;
    data['status'] = status;
    return data;
  }
}
