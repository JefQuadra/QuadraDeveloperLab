// ignore_for_file: unused_local_variable, unused_import

import 'dart:async';

import 'package:base/config/colors.dart';
import 'package:base/widgets/dialogs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Workspace extends StatefulWidget {
  const Workspace({super.key});

  @override
  State<Workspace> createState() => _WorkspaceState();
}

class _WorkspaceState extends State<Workspace> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Dialogs.lesson(context);
    });
  }

  final TextEditingController controllerEmail = TextEditingController();
  final TextEditingController controllerPassword = TextEditingController();

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
          child: Container(
            width: 300,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "System access",
                  style: TextStyle(
                    fontSize: 22
                  ),
                ),
                SizedBox(height: 30),
                TextField(
                  controller: controllerEmail,
                  style: const TextStyle(
                    fontSize: 18, 
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    height: 0.95
                  ),
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    isCollapsed: true,
                    contentPadding: const EdgeInsets.fromLTRB(20, 17, 0, 20),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.blue,
                          width: 2
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(0))
                    ),
                    hintText: "your email",
                    hintStyle: const TextStyle(
                        fontSize: 18,
                        color: Colors.black54),
                    fillColor: Colors.lightBlue,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: const BorderRadius.all(Radius.circular(0))),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(0))
                      ),
                    ),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: controllerPassword,
                  style: const TextStyle(
                    fontSize: 18, 
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    height: 0.95
                  ),
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    isCollapsed: true,
                    contentPadding: const EdgeInsets.fromLTRB(20, 17, 0, 20),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.blue,
                          width: 2
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(0))
                    ),
                    hintText: "password",
                    hintStyle: const TextStyle(
                        fontSize: 18,
                        color: Colors.black54),
                    fillColor: Colors.lightBlue,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      // borderSide: BorderSide(
                      //     width: 1,
                      //     color:Colors.amber
                      // ),
                      borderRadius: const BorderRadius.all(Radius.circular(0))),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(0))
                      ),
                    ),
                ),
                SizedBox(height: 10),
                Container(
                  color: Colors.amber,
                  width: double.infinity,
                  height: 50,
                  child: RawMaterialButton(
                    onPressed: (){},
                    child: Text(
                      "Log In",
                      style: TextStyle(
                        fontSize: 20
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      );
  }
}
