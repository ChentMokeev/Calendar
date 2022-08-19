import 'package:test_calendar/feature/search/domain/entity/user.dart';

class RoleModel extends Role {
  RoleModel({
    required int? id,
    required String? roleName,
    required List<String>? authorities,
    required bool? isDeleted,
  });

  factory RoleModel.fromJson(Map<String, dynamic> json) {
    return RoleModel(
      id: json['id'],
      roleName: json['roleName'],
      authorities: json['authorities'].cast<String>(),
      isDeleted: json['isDeleted'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['roleName'] = roleName;
    data['authorities'] = authorities;
    data['isDeleted'] = isDeleted;
    return data;
  }
}