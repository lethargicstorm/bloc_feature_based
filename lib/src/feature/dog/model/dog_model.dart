import 'package:freezed_annotation/freezed_annotation.dart';

part 'dog_model.freezed.dart';
part 'dog_model.g.dart';

@freezed
class DogModel with _$DogModel {
  const factory DogModel({
    required String message,
    required String status,
  }) = _DogModel;

  factory DogModel.fromJson(Map<String, dynamic> json) =>
      _$DogModelFromJson(json);
}
