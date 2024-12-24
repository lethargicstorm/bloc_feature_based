import 'dart:convert';

import 'package:simplappp/src/feature/dog/data/repository.dart';
import 'package:http/http.dart' as http;

import '../model/dog_model.dart';

class DogRepositoryImpl implements DogRepository {

  @override
  Future<DogModel> load() async {
    final url = Uri.parse('https://dog.ceo/api/breeds/image/random');
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final json = jsonDecode(response.body) as Map<String, dynamic>;
        return DogModel.fromJson(json);
      } else {
        throw Exception('Failed to load dog image: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error fetching dog image: $e');
    }
  }
}