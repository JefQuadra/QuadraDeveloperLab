// ignore_for_file: unused_local_variable, unused_import

import 'dart:async';

import 'package:base/config/colors.dart';
import 'package:base/widgets/dialogs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Dialogs.lesson(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quadra Developer Lab",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w300,
              fontFamily: "PressStart2P",
            ),
          ),
          backgroundColor: ColorsPSD.grayMoreClear,
        ),
        body: Center(
          child: SizedBox(
            width: 300,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "System access",
                  style: TextStyle(
                    fontSize: 22
                  ),
                ),
                const SizedBox(height: 30),
                const TextField(
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                  ),
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    isCollapsed: true,
                    contentPadding: EdgeInsets.fromLTRB(20, 17, 5, 20),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(12))
                    ),
                    hintText: "your email",
                    hintStyle: TextStyle(
                      fontSize: 18,
                      color: Colors.black54
                    ),
                    fillColor: Colors.lightBlue,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(12))
                    )
                  ),
                ),
                const SizedBox(height: 10),
                const TextField(
                  obscureText: true,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                  ),
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    isCollapsed: true,
                    contentPadding: EdgeInsets.fromLTRB(20, 17, 5, 20),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(12))
                    ),
                    hintText: "your password",
                    hintStyle: TextStyle(
                      fontSize: 18,
                      color: Colors.black54
                    ),
                    fillColor: Colors.lightBlue,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(12))
                    )
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.all(Radius.circular(12))
                  ),
                  width: double.infinity,
                  height: 50,
                  child: RawMaterialButton(
                    onPressed: (){},
                    child: const Text(
                      "Log In",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue
                      ),
                    ),
                  ),
                )
              ],
            ),
          ) 
        ),
      );
  }
}
