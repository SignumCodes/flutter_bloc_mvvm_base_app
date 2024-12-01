import 'package:bloc_mvvm_base_app/features/authentication/view/login_screen.dart';
import 'package:bloc_mvvm_base_app/features/authentication/view/signup_screen.dart';
import 'package:bloc_mvvm_base_app/features/home/view/home_screen.dart';
import 'package:bloc_mvvm_base_app/features/profile/view/profile_screen.dart';
import 'package:bloc_mvvm_base_app/features/splash/view/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/bottom_bar_cubit.dart';

class BottomNavBar extends StatelessWidget {
   BottomNavBar({super.key});

  final List<Widget> pages = [
    const HomeScreen(),
    const ProfileScreen(),
    const LoginScreen(),
    const SignupScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<BottomBarCubit, int>(
        builder: (context, state) {
          return pages[state]; // Display the current page based on state
        },
      ),
      bottomNavigationBar: BlocBuilder<BottomBarCubit, int>(
        builder: (context, state) {
          return BottomNavigationBar(
            backgroundColor:Colors.black12,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.black12,
            currentIndex: state,
            onTap: (index) => context.read<BottomBarCubit>().changePage(index),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
              BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Notifications'),
              BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
            ],
          );
        },
      ),
    );
  }
}
