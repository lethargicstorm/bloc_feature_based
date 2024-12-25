import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simplappp/src/feature/dog/widget/status_indicator.dart';

import '../bloc/dog_bloc.dart';
import 'status_indicator.dart';

class AboutDog extends StatelessWidget {
  const AboutDog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        splashColor: Colors.black26,
        onPressed: () {
          context.read<DogBloc>().add(const DogEvent.load());
        },
        child: const Icon(
          Icons.restart_alt_sharp,
          color: Colors.white,
        ),
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
              loaded: (dogs) {
                return Stack(
                  children: [
                    ImageFiltered(
                      imageFilter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Image.network(
                        dogs.message,
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Center(
                      child: Stack(
                        children: [
                          SizedBox(
                            height: 300,
                            width: 300,
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Image.network(
                                dogs.message,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 8,
                            right: 8,
                            child: StatusIndicator(success: dogs.status == 'success'),
                          )
                        ],
                      ),
                    ),

                  ],
                );
              },
              error: () {
                return const StatusIndicator(success: false);
              },
            );
          },
        ),
      ),
    );
  }
}
