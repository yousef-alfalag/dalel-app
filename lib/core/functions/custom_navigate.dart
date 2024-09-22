import 'package:go_router/go_router.dart';

void customPushNavigate(context,String path) {
    GoRouter.of(context).push(path);
  }
  void customPushReplacementNavigate(context,String path) {
    GoRouter.of(context).pushReplacement(path);
  }