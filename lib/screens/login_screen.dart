import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
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
                child: Text(
                  "Hello\nSign In!",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize:24,
                  ),
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
                    Text("Gmail",style: TextStyle(color: Theme.of(context).primaryColor,fontWeight: FontWeight.w600,fontSize: 18),),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "E-mail"

                      ),
                    ),
                    SizedBox(height: 30,),
                    Text("Password",style: TextStyle(color: Theme.of(context).primaryColor,fontWeight: FontWeight.w600,fontSize: 18),),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "password"

                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 60,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Theme.of(context).primaryColor, Theme.of(context).primaryColorDark],
                        ),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "SIGN UP",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.white),
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
