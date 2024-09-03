import 'package:e_commerce_dys/core/routing/routes.dart';
import 'package:flutter/material.dart';

import '../../features/auth/presentation/screens/forget_password_screen.dart';
import '../../features/auth/presentation/screens/register_screen.dart';
import '../../features/auth/presentation/screens/login_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.registerScreenRoute:
        return MaterialPageRoute(builder: (context) {return const RegisterScreen();});
      case AppRoutes.loginScreenRoute:
        return MaterialPageRoute(builder: (context) {return const LoginScreen();});
      case AppRoutes.forgetPasswordScreenRoute:
        return MaterialPageRoute(builder: (context) {return const ForgetPasswordScreen();});
      default:
        return MaterialPageRoute(
          builder: (context) {
            return Scaffold(
              body: Center(
                child: Text('There is no route defined for ${settings.name}'),
              ),
            );
          },
        );
    }
  }
}
