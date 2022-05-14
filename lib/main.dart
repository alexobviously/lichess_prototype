import 'package:flutter/material.dart';
import 'package:lichess_prototype/app/app.dart';
import 'package:lichess_prototype/locator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setUpServiceLocator();
  runApp(LichessApp());
}
