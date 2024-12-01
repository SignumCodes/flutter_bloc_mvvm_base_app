import 'package:flutter/material.dart';


class AppNavigator {
  
  static Future<void> navigateTo(
      BuildContext context,
      String routeName, {
        Object? arguments,
        RouteTransitionsBuilder? transitionBuilder,
      }) async {
    await Navigator.pushNamed(
      context,
      routeName,
      arguments: arguments,
    ).then((_) {
      
    });
  }

  
  static Future<void> replaceWith(
      BuildContext context,
      String routeName, {
        Object? arguments,
        RouteTransitionsBuilder? transitionBuilder,
      }) async {
    await Navigator.pushReplacementNamed(
      context,
      routeName,
      arguments: arguments,
    );
  }

  
  static Route createRoute(
      Widget page, {
        RouteSettings? settings,
        RouteTransitionsBuilder? transitionBuilder,
      }) {
    return PageRouteBuilder(
      settings: settings,
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        if (transitionBuilder != null) {
          return transitionBuilder(context, animation, secondaryAnimation, child);
        }
        return FadeTransition(opacity: animation, child: child);
      },
    );
  }
}
