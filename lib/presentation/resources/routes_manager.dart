import 'package:advanced_flutter_course/presentation/forgot_password/forgot_password_view.dart';
import 'package:advanced_flutter_course/presentation/login/login_view.dart';
import 'package:advanced_flutter_course/presentation/main/main_view.dart';
import 'package:advanced_flutter_course/presentation/register/register_view.dart';
import 'package:advanced_flutter_course/presentation/resources/strings_manager.dart';
import 'package:advanced_flutter_course/presentation/splash/splash_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String splashRoute = "/";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgotPasswordRoute = "/forgotPassword";
  static const String mainRoute = "/main";
  static const String storeDetailsRoute = "/storeDetails";
}

class RouteGenerator {
  Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => const RegisterView());
      case Routes.forgotPasswordRoute:
        return MaterialPageRoute(builder: (_) => const forgotPasswordView());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => const MainView());
      default:
        return undefinedRoute();
    }
  }

  Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(title: const Text(AppStrings.noRouteFount)),
              body: const Center(child: Text(AppStrings.noRouteFount)),
            ));
  }
}
