import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:recharme/core/helpers/dependency_injection.dart';
import 'package:recharme/features/home/presentation/blocs/cubit/nav_bar_cubit_cubit.dart';
import 'core/helpers/dependency_injection.dart' as sl;

import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await sl.init();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              NavBarCubitCubit(getIt<PersistentTabController>()),
        ),
      ],
      child: const MyApp(),
    ),
  );
}
