import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mockito/mockito.dart';
import 'package:random_colors/features/randomColor/bloc/random_color_bloc.dart';

class MockRandomColorBloc extends MockBloc<RandomColorEvent, RandomColorState>
    implements RandomColorBloc {}

void main() {
  group(
    'RandomColorBloc',
    () {
      late MockRandomColorBloc mockRandomColorBloc;

      setUp(() {
        mockRandomColorBloc = MockRandomColorBloc();
      });

      tearDown(() {
        mockRandomColorBloc.close();
      });

      test('initial state is correct', () {
        when(mockRandomColorBloc.state).thenReturn(RandomColorState.initial());

        expect(mockRandomColorBloc.state, RandomColorState.initial());
      });

      blocTest<RandomColorBloc, RandomColorState>(
        'emits RandomColorState with different active color than previous state',
        build: () => MockRandomColorBloc(),
        act: (bloc) => bloc.add(UpdateColor()),
        expect: () => [
          isA<RandomColorState>().having(
            (state) => state.activeColor,
            'activeColor',
            isNot(RandomColorState.initial().activeColor),
          ),
        ],
      );
    },
  );
}
