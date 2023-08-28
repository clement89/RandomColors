import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:random_colors/features/randomColor/bloc/random_color_bloc.dart';
import 'package:random_colors/features/randomColor/view/random_color_view.dart';

import '../bloc/random_color_bloc_test.dart';

void main() {
  group('RandomColorView Widget Test', () {
    late MockRandomColorBloc mockRandomColorBloc;

    setUp(() {
      mockRandomColorBloc = MockRandomColorBloc();
      when(mockRandomColorBloc.state).thenReturn(RandomColorState.initial());
    });

    testWidgets('Renders with initial color', (WidgetTester tester) async {
      when(mockRandomColorBloc.state).thenReturn(RandomColorState.initial());

      await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider<RandomColorBloc>.value(
            value: mockRandomColorBloc,
            child: const RandomColorView(title: 'Test Title'),
          ),
        ),
      );

      expect(find.text('Hello there'), findsOneWidget);
    });

    testWidgets('Changes color on tap', (WidgetTester tester) async {
      when(mockRandomColorBloc.state).thenReturn(RandomColorState.initial());

      await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider<RandomColorBloc>.value(
            value: mockRandomColorBloc,
            child: const RandomColorView(title: 'Test Title'),
          ),
        ),
      );

      await tester.tap(find.byType(GestureDetector));
      verify(mockRandomColorBloc.add(UpdateColor())).called(1);
    });
  });
}
