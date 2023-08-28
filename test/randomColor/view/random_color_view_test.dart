import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:random_colors/features/randomColor/bloc/random_color_bloc.dart';
import 'package:random_colors/features/randomColor/view/random_color_view.dart';

void main() {
  group('RandomColorView Widget Test', () {
    testWidgets('Renders with initial color', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider(
            create: (_) => RandomColorBloc(),
            child: const RandomColorView(title: 'Test Title'),
          ),
        ),
      );

      expect(find.text('Hello there'), findsOneWidget);
    });

    blocTest<RandomColorBloc, RandomColorState>(
      'Changes color on tap',
      build: () => RandomColorBloc(),
      act: (bloc) => bloc.add(UpdateColor()),
      expect: () => [
        isA<RandomColorState>().having(
          (state) => state.activeColor,
          'activeColor',
          isNot(RandomColorState.initial().activeColor),
        ),
      ],
    );
  });
}
