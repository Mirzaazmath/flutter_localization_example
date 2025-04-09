import 'package:flutter/material.dart';
import 'package:flutter_locallization_example/providers/change_language_provider.dart';
import 'package:flutter_locallization_example/screens/home_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences sp = await SharedPreferences.getInstance();
  String langCode = sp.getString("language_code") ?? "";

  runApp(MyApp(langCode: langCode));
}

class MyApp extends StatelessWidget {
  String langCode;
  MyApp({super.key, required this.langCode});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ChangeLanguageProvider()),
      ],
      child: Consumer<ChangeLanguageProvider>(
        builder: (context, provider, child) {
          return MaterialApp(
            locale: provider.appLocale,
            localizationsDelegates: [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            supportedLocales: [Locale('en'), Locale('es')],

            home: HomeScreen(),
          );
        },
      ),
    );
  }
}
