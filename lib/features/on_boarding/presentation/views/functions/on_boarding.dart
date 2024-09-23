import 'package:dalel_app/core/database/locale/cache/cache_helper.dart';
import 'package:dalel_app/core/services/service_locator.dart';

void onBoardingVisited(){
  getIt<CacheHelper>().saveData(key: "isOnboardingVisited",data: true);
}