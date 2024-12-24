import 'package:flutter/material.dart';
import 'package:simplappp/src/feature/dog/bloc/dog_bloc.dart';
import 'package:simplappp/src/feature/dog/data/data_source.dart';
import 'package:simplappp/src/feature/dog/data/repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simplappp/src/feature/home/widgets/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final DogRepository dogRepository = DogRepositoryImpl();
    return BlocProvider(
      create: (context) => DogBloc(dogRepository),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
