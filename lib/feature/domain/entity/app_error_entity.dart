import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_error_entity.freezed.dart';

@freezed
class AppErrorEntity with _$AppErrorEntity {
  factory AppErrorEntity({
    @Default(0) int? code,
    required String message,
  }) = _AppErrorEntity;
}
