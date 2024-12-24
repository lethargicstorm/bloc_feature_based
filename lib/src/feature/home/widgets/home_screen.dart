import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simplappp/src/feature/dog/bloc/dog_bloc.dart';
import 'package:simplappp/src/feature/dog/widget/about_dog.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    BlocProvider.of<DogBloc>(context).add(const DogEvent.load());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DOGS'),
      ),
      body: const AboutDog(),
    );
  }
}
