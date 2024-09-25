import 'package:dalel_app/app/dalel_app.dart';
import 'package:dalel_app/core/database/locale/cache/cache_helper.dart';
import 'package:dalel_app/core/functions/check_state_changes.dart';
import 'package:dalel_app/core/services/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp( options: DefaultFirebaseOptions.currentPlatform,);
  setupServiceLocator();
  checkStateChanges();
  await getIt<CacheHelper>().init();
  runApp(const DalelApp());
}