import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_colors/features/randomColor/bloc/random_color_bloc.dart';

class RandomColorView extends StatefulWidget {
  const RandomColorView({super.key, required this.title});

  final String title;

  @override
  State<RandomColorView> createState() => _RandomColorViewState();
}

class _RandomColorViewState extends State<RandomColorView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<RandomColorBloc, RandomColorState>(
        builder: (context, state) {
          return GestureDetector(
            onTap: () {
              RandomColorBloc bloc = context.read<RandomColorBloc>();
              bloc.add(UpdateColor());
            },
            child: Container(
              color: state.activeColor,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Hello there',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
