import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:metabugo/presentation/providers/home_screen_provider.dart';
import 'package:metabugo/presentation/views/home_screen.dart';
import 'package:metabugo/presentation/views/signUpWithPhone.dart';
import 'package:metabugo/presentation/views/sign_in.dart';
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
