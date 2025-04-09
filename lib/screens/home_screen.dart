import 'package:flutter/material.dart';
import 'package:flutter_locallization_example/providers/change_language_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../main.dart';

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
        foregroundColor: Colors.white,
        backgroundColor: Theme.of(context).primaryColor,
        title: Text("Dashboard", style: TextStyle(color: Colors.white)),
        actions: [
          Consumer<ChangeLanguageProvider>(
            builder: (context, provider, child) {
              return PopupMenuButton(
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
      body: Padding(padding: EdgeInsets.all(20),
      child: Center(child: Text(AppLocalizations.of(context)!.welcome("Mirza Azmathullah Baig"),style: TextStyle(color: Theme.of(context).primaryColorDark,fontSize: 22),)),),
      bottomNavigationBar: Container(
        height: 80,
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(color: Theme.of(context).primaryColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.home,color: Colors.white,size: 30,),
                Text("Home",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),)
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.type_specimen,color: Colors.white,size: 26,),
                Text("Blog",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),)
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.chat_bubble,color: Colors.white,size: 26,),
                Text("Chat",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),)
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.person,color: Colors.white,size: 30,),
                Text("Profile",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),)
              ],
            )
          ],
        ),
      ),
    );
  }
}

