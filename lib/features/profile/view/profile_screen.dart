import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final String? userName;


  const ProfileScreen({super.key, this.userName});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Profile'),
      ),
    );
  }
}
