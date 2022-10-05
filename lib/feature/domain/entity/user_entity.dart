class UserEntity {
  int? id;
  String? photoPath;
  String? positionName;
  String? fullName;

  UserEntity({this.id, this.photoPath, this.positionName, this.fullName});

  UserEntity.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    photoPath = json['photo_path'];
    positionName = json['position_name'];
    fullName = json['full_name'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['photo_path'] = photoPath;
    data['position_name'] = positionName;
    data['full_name'] = fullName;
    return data;
  }
}
