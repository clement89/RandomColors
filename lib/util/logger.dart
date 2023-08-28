import 'dart:developer';

import 'package:flutter/foundation.dart';

void dPrint(dynamic message) {
  if (kDebugMode) {
    log(message ?? 'null');
  }
}
