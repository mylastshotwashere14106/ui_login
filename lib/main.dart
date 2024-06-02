import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}):super(key:key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: new Login(),
    );
  }
}

class Login extends StatelessWidget {
  const Login({Key? key}):super(key:key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity ,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Color(0xFF00173F),
                    Color(0xFFFF0000),
                  ]
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top:60,left:60,right:60,bottom: 60),
              child: Text(
                "Hello\nSign in",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              height: double.infinity,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.all(30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                            Icons.check,
                            color: Color(0xFF00173F),
                            size: 30,
                        ),
                        label: Text(
                          "Email",style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF00173F),
                        ),),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.visibility_off,
                          color: Color(0xFF00173F),
                          size: 30,
                        ),
                        label: Text(
                          "Password",style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF00173F),
                        ),),
                      ),
                    ),
                    SizedBox(
                        height: 20,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Forgot password?",
                        style: TextStyle(
                          color: Color(0xFF00173F),
                          fontSize: 15,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF00173F),
                            Color(0xFFFF0000),
                          ],
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Sign in",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                              "Don't have an account",
                              style: TextStyle(
                                color: Color(0xFF00173F),
                                fontSize: 15,
                              ),
                          ),
                          Text(
                              "Sign up",
                              style: TextStyle(
                                color: Color(0xFF00173F),
                                fontSize: 20,
                              ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ),
          ),
        ],
      )

    );
  }
}
