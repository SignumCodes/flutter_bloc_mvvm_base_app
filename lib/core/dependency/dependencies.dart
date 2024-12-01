import 'package:bloc_mvvm_base_app/features/bottom_bar/cubit/bottom_bar_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/authentication/cubit/auth_cubit.dart';
import '../cubit/theme_cubit.dart';

List<BlocProvider> initProviders() {
  return [
    BlocProvider<BottomBarCubit>(create: (context) => BottomBarCubit()),
    BlocProvider<ThemeCubit>(create: (context) => ThemeCubit(),),
    BlocProvider<AuthCubit>(create: (context) => AuthCubit(),),
  ];
}