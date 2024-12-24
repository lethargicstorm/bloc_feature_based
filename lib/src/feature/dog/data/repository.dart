import 'package:simplappp/src/feature/dog/model/dog_model.dart';

abstract class DogRepository {
  Future<DogModel> load();
}