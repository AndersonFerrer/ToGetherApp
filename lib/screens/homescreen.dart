// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:redsocial_u2/index.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Iconsax.camera,
                size: 42,
              ),
              Text('ToGheter'),
              IconButton(
                  icon: (Icon(
                    (Preferences.theme == false) ? Iconsax.moon : Iconsax.sun_1,
                    size: 42,
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
      ),
      body: Container(
        color: (Preferences.theme == false) ? Colors.white : Colors.black,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(_page.toString(), textScaleFactor: 10.0),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 60.0,
        items: <Widget>[
          Icon(
            Icons.add,
            size: 30,
          ),
          Icon(Icons.list, size: 30),
          Icon(Icons.compare_arrows, size: 30),
          Icon(Icons.call_split, size: 30),
          Icon(Icons.perm_identity, size: 30),
        ],
        color: Colors.red,
        buttonBackgroundColor: Colors.redAccent,
        backgroundColor:
            (Preferences.theme == false) ? Colors.white : Colors.black,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        letIndexChange: (index) => true,
      ),
      /* bottomNavigationBar: CurvedNavigationBar(
        items: [],
      ), */
    );
  }
}
