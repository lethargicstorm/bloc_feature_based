import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/dog_bloc.dart';

class AboutDog extends StatelessWidget {
  const AboutDog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        splashColor: Colors.orange,
        onPressed: () {
          context.read<DogBloc>().add(const DogEvent.load());
        },
        child: const Icon(Icons.restart_alt_sharp, color: Colors.white,),
      ),
      body: Center(
        child: BlocBuilder<DogBloc, DogState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => const Center(
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: CircularProgressIndicator(),
                ),
              ),
              error: () => const Text('ERROR BLYAHA'),
              loaded: (dogs) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 300,
                      width: 300,
                      child: Image.network(dogs.message),
                    ),
                    Text(dogs.status)
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
