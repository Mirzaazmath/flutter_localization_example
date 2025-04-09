import 'package:flutter/material.dart';
import 'package:flutter_locallization_example/screens/login_screen.dart';
import 'package:flutter_locallization_example/screens/register_screen.dart';
import 'package:provider/provider.dart';

import '../main.dart';
import '../providers/change_language_provider.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Theme.of(context).primaryColor, Theme.of(context).primaryColorDark],
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
                "FITNESS CLUB",
                style: TextStyle(
                  color: Colors.white,

                  fontSize:20,
                ),
              ),
              Spacer(),
              Text(
                "Welcome Back",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize:35,
                ),
              ),
              SizedBox(height: 40),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                },
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "SIGN IN",
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
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen()));
                },
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "SIGN UP",
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
