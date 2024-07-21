import 'package:bb_assignment/configs/di/injection.dart';
import 'package:bb_assignment/configs/local/local_storage.dart';
import 'package:bb_assignment/features/app/app.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  configureDependencies();

  await initLocalStorage();

  runApp(MyApp());
}
