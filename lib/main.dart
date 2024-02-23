import 'package:adaptive_dashboard/features/dashboard/cubits/all_expenses_cubit/expenses_cubit.dart';
import 'package:adaptive_dashboard/features/dashboard/cubits/drawer_cubit/drawer_cubit.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/dashboard/views/dashboard_view.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => DrawerCubit()),
          BlocProvider(create: (context) => ExpensesCubit()),
        ],
        child: const DashboardView(),
      ),
    );
  }
}
