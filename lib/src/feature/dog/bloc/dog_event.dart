part of 'dog_bloc.dart';

@freezed
class DogEvent with _$DogEvent {
  const factory DogEvent.load() = _Load;
}
