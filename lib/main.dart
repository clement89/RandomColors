import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:random_colors/util/logger.dart';

import 'features/app/app.dart';

void main() async {
  await runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await ScreenUtil.ensureScreenSize();
    runApp(const MyApp());
  }, (error, stackTrace) {
    dPrint('Error ->> $error');
  });
}
