part of 'random_color_bloc.dart';

@immutable
class RandomColorState extends Equatable {
  final Color activeColor;
  const RandomColorState({required this.activeColor});

  factory RandomColorState.initial() {
    return RandomColorState(activeColor: Colors.blue.withOpacity(0.5));
  }

  RandomColorState copyWith({Color? activeColor}) {
    return RandomColorState(activeColor: activeColor ?? this.activeColor);
  }

  @override
  List<Object?> get props => [activeColor];
}
