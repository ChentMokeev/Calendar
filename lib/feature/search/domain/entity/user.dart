import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int? id;
  final String? photoPath;
  final String? firstName;
  final String? lastName;
  final String? patronymic;
  final String? msisdn;
  final String? email;
  final String? password;
  final Role? role;
  final String? status;
  final bool? isDeleted;

  const User({
    required this.id,
    required this.photoPath,
    required this.firstName,
    required this.lastName,
    required this.patronymic,
    required this.msisdn,
    required this.email,
    required this.password,
    required this.role,
    required this.status,
    required this.isDeleted,
  });

  @override
  List<Object?> get props => [
        id,
        photoPath,
        firstName,
        lastName,
        patronymic,
        msisdn,
        email,
        password,
        role,
        status,
        isDeleted,
      ];
}

class Role {
  int? id;
  String? roleName;
  List<String>? authorities;
  bool? isDeleted;

  Role({this.id, this.roleName, this.authorities, this.isDeleted});
}