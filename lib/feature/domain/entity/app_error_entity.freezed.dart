// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_error_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppErrorEntity {
  int? get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppErrorEntityCopyWith<AppErrorEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppErrorEntityCopyWith<$Res> {
  factory $AppErrorEntityCopyWith(
          AppErrorEntity value, $Res Function(AppErrorEntity) then) =
      _$AppErrorEntityCopyWithImpl<$Res>;
  $Res call({int? code, String message});
}

/// @nodoc
class _$AppErrorEntityCopyWithImpl<$Res>
    implements $AppErrorEntityCopyWith<$Res> {
  _$AppErrorEntityCopyWithImpl(this._value, this._then);

  final AppErrorEntity _value;
  // ignore: unused_field
  final $Res Function(AppErrorEntity) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AppErrorEntityCopyWith<$Res>
    implements $AppErrorEntityCopyWith<$Res> {
  factory _$$_AppErrorEntityCopyWith(
          _$_AppErrorEntity value, $Res Function(_$_AppErrorEntity) then) =
      __$$_AppErrorEntityCopyWithImpl<$Res>;
  @override
  $Res call({int? code, String message});
}

/// @nodoc
class __$$_AppErrorEntityCopyWithImpl<$Res>
    extends _$AppErrorEntityCopyWithImpl<$Res>
    implements _$$_AppErrorEntityCopyWith<$Res> {
  __$$_AppErrorEntityCopyWithImpl(
      _$_AppErrorEntity _value, $Res Function(_$_AppErrorEntity) _then)
      : super(_value, (v) => _then(v as _$_AppErrorEntity));

  @override
  _$_AppErrorEntity get _value => super._value as _$_AppErrorEntity;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_AppErrorEntity(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AppErrorEntity implements _AppErrorEntity {
  _$_AppErrorEntity({this.code = 0, required this.message});

  @override
  @JsonKey()
  final int? code;
  @override
  final String message;

  @override
  String toString() {
    return 'AppErrorEntity(code: $code, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppErrorEntity &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_AppErrorEntityCopyWith<_$_AppErrorEntity> get copyWith =>
      __$$_AppErrorEntityCopyWithImpl<_$_AppErrorEntity>(this, _$identity);
}

abstract class _AppErrorEntity implements AppErrorEntity {
  factory _AppErrorEntity({final int? code, required final String message}) =
      _$_AppErrorEntity;

  @override
  int? get code;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_AppErrorEntityCopyWith<_$_AppErrorEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
