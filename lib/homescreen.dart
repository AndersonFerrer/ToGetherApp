import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(
                'https://cdns.iconmonstr.com/wp-content/releases/preview/2017/240/iconmonstr-photo-camera-11.png',
                height: 40,
              ),
              Text('ToGheter'),
              Icon(Icons.nightlight_rounded)
            ],
          ),
        ),
      ),
    );
  }
}
