import 'package:ecommerce/features/auth/presentation/views/forgot_password_view.dart';
import 'package:ecommerce/features/home/presentaion/view/data/cubit.dart';
import 'package:ecommerce/features/home/presentaion/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/auth/presentation/views/login_view.dart';
import '../../features/auth/presentation/views/sign_up_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';
import 'routes.dart';

abstract class AppRouter {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (context) => const SplashView());
      case Routes.login:
        return MaterialPageRoute(builder: (context) => const LoginView());
      case Routes.signup:
        return MaterialPageRoute(builder: (context) => const SignUpView());
      case Routes.forgotPassword:
        return MaterialPageRoute(
          builder: (context) => const ForgotPasswordView(),
        );
      case Routes.home:
        return MaterialPageRoute(
          builder: (context) => MultiBlocProvider(
            providers: [BlocProvider(create: (_) => MainCubit())],
            child: const HomeView(),
          ),
        );
      default:
        return MaterialPageRoute(builder: (context) => const SplashView());
    }
  }
}
