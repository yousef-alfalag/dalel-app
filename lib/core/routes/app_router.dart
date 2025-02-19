import 'package:dalel_app/core/constants/route_constant.dart';
import 'package:dalel_app/features/auth/auth_cubit/cubit/auth_cubit.dart';
import 'package:dalel_app/features/auth/presentation/views/sign_in_view.dart';
import 'package:dalel_app/features/auth/presentation/views/sign_up_view.dart';
import 'package:dalel_app/features/auth/presentation/views/verify_view.dart';
import 'package:dalel_app/features/home/presentation/views/home_view/home_view.dart';
import 'package:dalel_app/features/on_boarding/presentation/views/onboarding_view.dart';
import 'package:dalel_app/features/splash/presentation/view/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: "/",
    builder: (context, state) => const SplashView(),
  ),
  GoRoute(
    path: AppRoute.onBoardingView,
    builder: (context, state) => const OnBoardingView(),
  ),
  GoRoute(
    path: AppRoute.signUpView,
    builder: (context, state) => BlocProvider(
      create: (context) => AuthCubit(),
      child: const SignUpView(),
    ),
  ),
  GoRoute(
    path: AppRoute.signInView,
    builder: (context, state) => BlocProvider(
      create: (context) => AuthCubit(),
      child: const SignInView(),
    ),
  ),
  GoRoute(
    path: AppRoute.verifyView,
    builder: (context, state) => const VerifyView(),
  ),
  GoRoute(
    path: AppRoute.homeView,
    builder: (context, state) => const HomeView(),
  ),
]);
