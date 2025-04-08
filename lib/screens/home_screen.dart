import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

enum Language { english, spanish }

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.helloWorld),
        actions: [
          PopupMenuButton(
            onSelected: (lang) {},
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(value: Language.english, child: Text("English")),
                PopupMenuItem(value: Language.spanish, child: Text("Spanish")),
              ];
            },
          ),
        ],
      ),
    );
  }
}
