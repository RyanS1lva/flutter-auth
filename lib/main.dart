import 'package:flutter/material.dart';

import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'package:core/lib.dart';
import 'package:flutter_auth/features/auth/lib/auth_feature.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await dotenv.load(fileName: ".env");

  await Supabase.initialize(
    url: dotenv.env['SUPABASE_URL'] ?? '',
    anonKey: dotenv.env['SUPABASE_ANON_KEY'] ?? '',
  );

  final getIt = GetIt.instance;

  getIt.registerLazySingleton<SupabaseClient>(() => Supabase.instance.client);
  AuthFeature().injectDependencies(getIt);

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AuthApp',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      initialRoute: AuthFeature.login,
      routes: AuthFeature.routes(),
    );
  }
}
