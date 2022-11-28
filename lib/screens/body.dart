// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:redsocial_u2/index.dart';
import 'package:redsocial_u2/screens/homescren.dart';
import 'package:redsocial_u2/screens/perfilscreen.dart';
import 'package:redsocial_u2/screens/reelpage.dart';
import 'package:redsocial_u2/screens/searchpage.dart';

class BodyScreen extends StatefulWidget {
  const BodyScreen({super.key});

  @override
  State<BodyScreen> createState() => _BodyScreenState();
}

class _BodyScreenState extends State<BodyScreen> {
  int _page = 0;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      HomeScreen(),
      SearchScreen(),
      ReelScreen(),
      PerfilScreen(onPressed: () {
        final CurvedNavigationBarState? navBarState =
            _bottomNavigationKey.currentState;
        navBarState?.setPage(0);
      }),
    ];
    return Scaffold(
      body: Container(child: pages[_page]),
      extendBody: true,
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 60.0,
        items: <Widget>[
          Icon(
            Iconsax.home,
            size: 36,
            color: Colors.white,
          ),
          Icon(
            Iconsax.search_normal,
            size: 36,
            color: Colors.white,
          ),
          Icon(
            Iconsax.video_play,
            size: 36,
            color: Colors.white,
          ),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(width: 2, color: Colors.white),
            ),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2022/10/19/22/15/cat-7533717__340.jpg'),
              radius: 20,
            ),
          ),
        ],
        color: verde,
        buttonBackgroundColor: verdeOscuro,
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        letIndexChange: (index) => true,
      ),
    );
  }
}
