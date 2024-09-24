import 'package:dalel_app/core/database/locale/cache/cache_helper.dart';
import 'package:dalel_app/features/auth/auth_cubit/cubit/auth_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt=GetIt.instance;

void setupServiceLocator(){
  getIt.registerSingleton<CacheHelper>(CacheHelper());
  getIt.registerSingleton<AuthCubit>(AuthCubit());
}