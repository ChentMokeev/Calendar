import 'package:test_calendar/feature/search/data/models/role_model.dart';
import 'package:test_calendar/feature/search/domain/entity/user.dart';

class UserModel extends User {
  const UserModel({
    required int? id,
    required String? photoPath,
    required String? firstName,
    required String? lastName,
    required String? patronymic,
    required String? msisdn,
    required String? email,
    required String? password,
    required RoleModel? role,
    required String? status,
    required bool? isDeleted,
  }) : super(
          id: id,
          photoPath: photoPath,
          firstName: firstName,
          lastName: lastName,
          patronymic: patronymic,
          msisdn: msisdn,
          email: email,
          password: password,
          role: role,
          status: status,
          isDeleted: isDeleted,
        );

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'photoPath': photoPath,
      'firstName': firstName,
      'lastName': lastName,
      'patronymic': patronymic,
      'msisdn': msisdn,
      'email': email,
      'password': password,
      'role': role,
      'status': status,
      'isDeleted': isDeleted,
    };
  }

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      photoPath: json['photoPath'],
      firstName: json['firstName'],
      lastName: json['lastName'],
      patronymic: json['patronymic'],
      msisdn: json['msisdn'],
      email: json['email'],
      password: json['password'],
      role: json['role'] != null ? RoleModel.fromJson(json['role']) : null,
      status: json['status'],
      isDeleted: json['isDeleted'],
    );
  }
}
