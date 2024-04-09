import 'package:flutter/material.dart';
import 'package:metabugo/presentation/providers/account_add_provider.dart';
import 'package:metabugo/presentation/providers/death_day_provider.dart';
import 'package:metabugo/presentation/providers/funeral_selected_provider.dart';
import 'package:metabugo/presentation/providers/home_screen_provider.dart';
import 'package:metabugo/presentation/providers/hour_provider.dart';
import 'package:metabugo/presentation/providers/minute_provider.dart';
import 'package:metabugo/presentation/views/splash_screen.dart';

import 'package:provider/provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeScreenProvider()),
        ChangeNotifierProvider(create: (_) => DeathDayProvider()),
        ChangeNotifierProvider(create: (_) => HourProvider()),
        ChangeNotifierProvider(create: (_) => MinuteProvider()),
        ChangeNotifierProvider(create: (_) => FuneralSelectedProvider()),
        ChangeNotifierProvider(create: (_) => AccountAddProvider()),
      ],
      child: MaterialApp(
        home: SplashScreen(),
      ), /*SignUpWithPhone(),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('ko', 'KR'),
        // include country code too
      ],*/
    );
  }
}
