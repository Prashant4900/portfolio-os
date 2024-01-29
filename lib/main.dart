import 'package:flutter/material.dart';
import 'package:portfolio/platforms/macos/home_screen.dart';
import 'package:portfolio/utils/apps_provider.dart';
import 'package:portfolio/utils/battery_provider.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  await BatteryProvider().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<BatteryProvider>(
          create: (_) => BatteryProvider(),
        ),
        ChangeNotifierProvider<AppsProvider>(
          create: (_) => AppsProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          // textTheme: GoogleFonts.,
          useMaterial3: true,
        ),
        home: const MyMacosHomeScreen(),
      ),
    );
  }
}
