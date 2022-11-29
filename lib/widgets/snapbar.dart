// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:redsocial_u2/index.dart';

class CustomSnapBar {
  static GlobalKey<ScaffoldMessengerState> msgkey =
      GlobalKey<ScaffoldMessengerState>();

  static verSnackBar(String msg) {
    final snackbar = SnackBar(
        duration: Duration(seconds: 3),
        backgroundColor: Color.fromARGB(152, 0, 0, 0),
        content: Stack(children: [
          Positioned(
            top: 300,
            left: 80,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: verdeClaro),
              width: 200,
              height: 200,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        msg,
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: (msg == 'Bienvenido') ? 24 : 18,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      (msg == 'Bienvenido' ||
                              msg == 'Datos actualizados correctamente')
                          ? Icon(
                              Iconsax.verify,
                              color: Colors.white,
                              size: 32,
                            )
                          : Icon(
                              Iconsax.warning_2,
                              color: Colors.white,
                              size: 32,
                            ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ]));
    msgkey.currentState!.showSnackBar(snackbar);
  }
}
