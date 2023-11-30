import 'package:flutter/material.dart';
import 'package:santa/src/app.dart';
import 'package:santa/src/core/di/injectable.dart';

void main() {
  configureDependencies();
  runApp(const App());
}
