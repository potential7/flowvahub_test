import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'auth/provider/auth_provider.dart';
import 'auth/screens/splash.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
      url: 'https://ynbcoigyptgzwcewyglv.supabase.co',
      anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InluYmNvaWd5cHRnendjZXd5Z2x2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjQ4NDczODQsImV4cCI6MjA4MDQyMzM4NH0.apooO0Eb8T75u6IdLhFGG0xJVV7oDhqW8ke_Xr2bd6M');
     runApp(
         MultiProvider(
       providers: [
         ChangeNotifierProvider(create: (_) => AuthProvider()),
       ],
       child: const MyApp(),
     ));


}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flowvahub',
      theme: ThemeData(fontFamily: "Manrope"),
      home: const SplashScreen(),
    );
  }
}
