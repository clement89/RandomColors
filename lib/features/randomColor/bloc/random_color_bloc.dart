import 'dart:math';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'random_color_event.dart';
part 'random_color_state.dart';

class RandomColorBloc extends Bloc<RandomColorEvent, RandomColorState> {
  RandomColorBloc() : super(RandomColorState.initial()) {
    on<UpdateColor>(_updateColor);
  }

  Future<void> _updateColor(
    UpdateColor event,
    Emitter<RandomColorState> emit,
  ) async {
    try {
      emit(state.copyWith(
        activeColor: _getRandomColor().withOpacity(0.6),
      ));
    } catch (error) {
      emit(state.copyWith(
        activeColor: Colors.black12,
      ));
    }
  }

  Color _getRandomColor() {
    Random random = Random();
    return Color.fromRGBO(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      1.0,
    );
  }
}
