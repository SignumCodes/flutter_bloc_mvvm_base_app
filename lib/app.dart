import 'package:bloc_mvvm_base_app/features/bottom_bar/view/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/constants/colors.dart';
import 'core/cubit/theme_cubit.dart';
import 'core/route/route.dart';
import 'core/services/app_navigator.dart';
import 'features/authentication/view/login_screen.dart';
import 'features/authentication/view/signup_screen.dart';
import 'features/home/view/home_screen.dart';
import 'features/profile/view/profile_screen.dart';
import 'features/splash/view/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, AppTheme>(
      builder: (context, theme) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Base App',
          theme: ThemeData(
            brightness: theme == AppTheme.light ? Brightness.light : Brightness.dark,
            primaryColor: AppColors.primaryColor,
            hintColor: AppColors.secondaryColor,
          ),
          initialRoute: AppRoute.splash,
          onGenerateRoute: (RouteSettings settings) {
            switch (settings.name) {
              case AppRoute.splash:
                return AppNavigator.createRoute(const SplashScreen());
              case AppRoute.bottomBar:
                return AppNavigator.createRoute( BottomNavBar());
              case AppRoute.login:
                return AppNavigator.createRoute(const LoginScreen());
              case AppRoute.signup:
                return AppNavigator.createRoute(const SignupScreen());
              case AppRoute.home:
                return AppNavigator.createRoute(const HomeScreen());
              case AppRoute.profile:
                return AppNavigator.createRoute(const ProfileScreen());
              default:
                return AppNavigator.createRoute(const SplashScreen());
            }
          },
        );
      },
    );
  }
}
