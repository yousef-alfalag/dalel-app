import 'package:dalel_app/core/database/locale/cache/cache_helper.dart';
import 'package:dalel_app/core/utils/app_text_styles.dart';
import 'package:get_it/get_it.dart';

final getIt=GetIt.instance;

void setupServiceLocator(){
  getIt.registerSingleton<CacheHelper>(CacheHelper());
}