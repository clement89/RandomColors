import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:random_colors/features/randomColor/bloc/random_color_bloc.dart';

void main() {
  group(
    'RandomColorBloc',
    () {
      test('initial state is correct', () {
        final bloc = RandomColorBloc();
        expect(bloc.state, RandomColorState.initial());
        bloc.close(); // Close the bloc after the test
      });

      blocTest<RandomColorBloc, RandomColorState>(
        'emits RandomColorState with different active color than previous state',
        build: () => RandomColorBloc(),
        act: (bloc) => bloc.add(UpdateColor()),
        expect: () => [
          isA<RandomColorState>().having(
            (state) => state.activeColor,
            'activeColor',
            isNot(RandomColorState.initial().activeColor),
          ),
        ],
        verify: (bloc) {
          // Add any additional verification here if needed
        },
      );
    },
  );
}
