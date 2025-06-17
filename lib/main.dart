import 'package:auvnet/auvnet_app.dart';
import 'package:auvnet/core/di/dependancy_ingection.dart';
import 'package:auvnet/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  setupGetit();
  runApp(const Auvnet());
}
