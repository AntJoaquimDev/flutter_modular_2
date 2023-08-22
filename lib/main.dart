import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_2/app/app_module.dart';
import 'package:flutter_modular_2/app/app_widgets.dart';

void main() {
  return runApp(ModularApp(module: AppModule(), child: AppWidget()));
}
