// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:redsocial_u2/index.dart';

class VerificarAuth extends StatelessWidget {
  const VerificarAuth({super.key});

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context, listen: false);
    return Scaffold(
      body: Center(
        child: FutureBuilder(
          future: authService.leerToken(),
          builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
            if (!snapshot.hasData) {
              return Text('Procesando');
            }
            if (snapshot.data == '') {
              Future.microtask(() {
                Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (_, __, ___) => const WelcomeScreen(),
                    transitionDuration: Duration(seconds: 0),
                  ),
                );
              });
            } else {
              Future.microtask(() {
                Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (_, __, ___) => const BodyScreen(),
                    transitionDuration: Duration(seconds: 0),
                  ),
                );
              });
            }
            return Container();
          },
        ),
      ),
    );
  }
}
