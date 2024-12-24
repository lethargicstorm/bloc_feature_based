// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dog_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DogModel _$DogModelFromJson(Map<String, dynamic> json) {
  return _DogModel.fromJson(json);
}

/// @nodoc
mixin _$DogModel {
  String get message => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DogModelCopyWith<DogModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DogModelCopyWith<$Res> {
  factory $DogModelCopyWith(DogModel value, $Res Function(DogModel) then) =
      _$DogModelCopyWithImpl<$Res, DogModel>;
  @useResult
  $Res call({String message, String status});
}

/// @nodoc
class _$DogModelCopyWithImpl<$Res, $Val extends DogModel>
    implements $DogModelCopyWith<$Res> {
  _$DogModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DogModelImplCopyWith<$Res>
    implements $DogModelCopyWith<$Res> {
  factory _$$DogModelImplCopyWith(
          _$DogModelImpl value, $Res Function(_$DogModelImpl) then) =
      __$$DogModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String status});
}

/// @nodoc
class __$$DogModelImplCopyWithImpl<$Res>
    extends _$DogModelCopyWithImpl<$Res, _$DogModelImpl>
    implements _$$DogModelImplCopyWith<$Res> {
  __$$DogModelImplCopyWithImpl(
      _$DogModelImpl _value, $Res Function(_$DogModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? status = null,
  }) {
    return _then(_$DogModelImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DogModelImpl implements _DogModel {
  const _$DogModelImpl({required this.message, required this.status});

  factory _$DogModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DogModelImplFromJson(json);

  @override
  final String message;
  @override
  final String status;

  @override
  String toString() {
    return 'DogModel(message: $message, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DogModelImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DogModelImplCopyWith<_$DogModelImpl> get copyWith =>
      __$$DogModelImplCopyWithImpl<_$DogModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DogModelImplToJson(
      this,
    );
  }
}

abstract class _DogModel implements DogModel {
  const factory _DogModel(
      {required final String message,
      required final String status}) = _$DogModelImpl;

  factory _DogModel.fromJson(Map<String, dynamic> json) =
      _$DogModelImpl.fromJson;

  @override
  String get message;
  @override
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$DogModelImplCopyWith<_$DogModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
