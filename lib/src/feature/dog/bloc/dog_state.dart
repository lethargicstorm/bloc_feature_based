part of 'dog_bloc.dart';

@freezed
class DogState with _$DogState {
  const factory DogState.initial() = _Initial;
  const factory DogState.loading() = _Loading;
  const factory DogState.loaded({required DogModel dogModel}) = _Loaded;
  const factory DogState.error() = _Error;
}
