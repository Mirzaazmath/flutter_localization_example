import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'home_screen.dart';
class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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

        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                          AppLocalizations.of(context)!.createYourAccount,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize:24,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.close, color: Colors.white, size: 30),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
              Expanded(child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(40)),

                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 50,),
                    Text(AppLocalizations.of(context)!.name,style: TextStyle(color: Theme.of(context).primaryColor,fontWeight: FontWeight.w600,fontSize: 18),),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: AppLocalizations.of(context)!.name,

                      ),
                    ),
                    SizedBox(height: 30,),
                    Text(AppLocalizations.of(context)!.gmail,style: TextStyle(color: Theme.of(context).primaryColor,fontWeight: FontWeight.w600,fontSize: 18),),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: AppLocalizations.of(context)!.email,

                      ),
                    ),
                    SizedBox(height: 30,),
                    Text(AppLocalizations.of(context)!.password,style: TextStyle(color: Theme.of(context).primaryColor,fontWeight: FontWeight.w600,fontSize: 18),),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: AppLocalizations.of(context)!.password,

                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                      },
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Theme.of(context).primaryColor, Theme.of(context).primaryColorDark],
                          ),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                            AppLocalizations.of(context)!.signUp,
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.white),
                        ),
                      ),
                    ),
                    Spacer(),


                  ],
                ),
              ))

            ],
          ),
        ),
      ),
    );
  }
}
