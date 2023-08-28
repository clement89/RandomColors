import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:random_colors/features/randomColor/bloc/random_color_bloc.dart';
import 'package:random_colors/features/randomColor/view/random_color_view.dart';
import 'package:random_colors/style/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final brightness = MediaQuery.of(context).platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    return MultiBlocProvider(
      providers: [
        BlocProvider<RandomColorBloc>(
          create: (BuildContext context) => RandomColorBloc(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(430, 932),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Random Color',
            theme: isDarkMode ? AppTheme.dark : AppTheme.light,
            home: child,
          );
        },
        child: const RandomColorView(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}
