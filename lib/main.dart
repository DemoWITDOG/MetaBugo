import 'package:flutter/material.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';
import 'package:metabugo/presentation/providers/account_add_provider.dart';
import 'package:metabugo/presentation/providers/death_day_provider.dart';
import 'package:metabugo/presentation/providers/funeral_search_provider.dart';
import 'package:metabugo/presentation/providers/funeral_selected_provider.dart';
import 'package:metabugo/presentation/providers/home_screen_provider.dart';
import 'package:metabugo/presentation/providers/hour_provider.dart';
import 'package:metabugo/presentation/providers/minute_provider.dart';
import 'package:metabugo/presentation/viewmodels/furneral_viewmodel.dart';
import 'package:metabugo/presentation/views/bugoPreview/bugo_preview_screen.dart';
import 'package:metabugo/utils/constants.dart';

import 'package:provider/provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  AuthRepository.initialize(appKey: Constants.nativeAppkey);

  final supabaseClient = SupabaseClient(
    Constants.supabaseUrl,
    Constants.supabaseApiKey,
  );

  KakaoSdk.init(
    nativeAppKey: Constants.nativeAppkey,
    javaScriptAppKey: Constants.javascriptAppkey,
  );


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
        ChangeNotifierProvider(create: (_) => FuneralSearchProvider()),
        ChangeNotifierProvider(create: (_) => FuneralViewModel())
      ],
      child: MaterialApp(
        home: BugoPreViewScreen(),
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
