import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_locallization_example/providers/change_language_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}



class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.helloWorld),
        actions: [
          Consumer<ChangeLanguageProvider>(builder: (context,provider,child){
            return PopupMenuButton(
              onSelected: (lang) {
                if(lang == Language.english){
                  provider.updateLanguage(Locale('en'));
                }else{
                  provider.updateLanguage(Locale('es'));
                }
              },
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(value: Language.english, child: Text("English")),
                  PopupMenuItem(value: Language.spanish, child: Text("Spanish")),
                ];
              },
            );
          })
        ],
      ),
    );
  }
}
