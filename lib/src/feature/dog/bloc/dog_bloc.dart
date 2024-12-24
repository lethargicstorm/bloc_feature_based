import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simplappp/src/feature/dog/model/dog_model.dart';

import '../data/repository.dart';

part 'dog_event.dart';
part 'dog_state.dart';
part 'dog_bloc.freezed.dart';

class DogBloc extends Bloc<DogEvent, DogState> {
  final DogRepository dogRepository;

  DogBloc(this.dogRepository) : super(const DogState.initial()) {
    on<DogEvent>(
      (event, emitter) => event.map<Future<void>>(
        load: (event) => _load(event, emitter),
      ),
    );
  }

  Future<void> _load(_Load event, Emitter<DogState> emit) async {
    emit(const DogState.loading());
    try {
      final dogs = await dogRepository.load();
      emit(DogState.loaded(dogModel: dogs));
    } on Object catch (error, stack) {
      log(error.toString());
      log(stack.toString());
      emit(const DogState.error());
    }
  }
}
