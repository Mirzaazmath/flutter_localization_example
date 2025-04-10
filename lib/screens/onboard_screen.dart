import 'package:flutter/material.dart';
import 'package:flutter_locallization_example/screens/login_screen.dart';
import 'package:flutter_locallization_example/screens/register_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../main.dart';
import '../providers/change_language_provider.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Theme.of(context).primaryColor,
            Theme.of(context).primaryColorDark,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          actions: [
            Consumer<ChangeLanguageProvider>(
              builder: (context, provider, child) {
                return PopupMenuButton(
                  icon: Icon(Icons.translate),
                  iconColor: Colors.white,
                  onSelected: (lang) {
                    if (lang == Language.english) {
                      provider.updateLanguage(Locale('en'));
                    } else if (lang == Language.hindi) {
                      provider.updateLanguage(Locale('hi'));
                    } else if (lang == Language.urdu) {
                      provider.updateLanguage(Locale('ur'));
                    } else if (lang == Language.telugu) {
                      provider.updateLanguage(Locale('te'));
                    } else if (lang == Language.tamil) {
                      provider.updateLanguage(Locale('ta'));
                    } else {
                      provider.updateLanguage(Locale('es'));
                    }
                  },
                  itemBuilder: (BuildContext context) {
                    return [
                      PopupMenuItem(
                        value: Language.english,
                        child: Text("English"),
                      ),
                      PopupMenuItem(
                        value: Language.spanish,
                        child: Text("Spanish"),
                      ),
                      PopupMenuItem(
                        value: Language.hindi,
                        child: Text("Hindi"),
                      ),
                      PopupMenuItem(value: Language.urdu, child: Text("Urdu")),
                      PopupMenuItem(
                        value: Language.telugu,
                        child: Text("Telugu"),
                      ),
                      PopupMenuItem(
                        value: Language.tamil,
                        child: Text("Tamil"),
                      ),
                    ];
                  },
                );
              },
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.fitness_center, color: Colors.white, size: 80),
              Text(
                AppLocalizations.of(context)!.fitnessClub,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Spacer(),
              Text(
                AppLocalizations.of(context)!.welcomeBack,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
              SizedBox(height: 40),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    AppLocalizations.of(context)!.signIn,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterScreen()),
                  );
                },
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    AppLocalizations.of(context)!.signUp,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
