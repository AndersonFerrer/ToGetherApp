// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:redsocial_u2/index.dart';
import 'package:redsocial_u2/variables.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(top: 42),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'ToGether',
              style: GoogleFonts.elMessiri(
                  fontSize: 36,
                  color: (Preferences.theme == true) ? blanco : verdeClaro,
                  fontWeight: FontWeight.bold),
            ),
            IconButton(
                icon: (Icon(
                  (Preferences.theme == false) ? Iconsax.moon : Iconsax.sun_1,
                  size: 42,
                  color: (Preferences.theme == true) ? blanco : verdeClaro,
                )),
                onPressed: () {
                  Preferences.theme = !Preferences.theme;
                  final themeP =
                      Provider.of<ThemeProvider>(context, listen: false);
                  Preferences.theme ? themeP.darkMode() : themeP.lightMode();
                  setState(() {});
                }),
          ],
        ),
      ),
    );
  }
}
