// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:redsocial_u2/index.dart';
import 'package:redsocial_u2/screens/homescren.dart';
import 'package:redsocial_u2/screens/perfilscreen.dart';
import 'package:redsocial_u2/screens/reelpage.dart';
import 'package:redsocial_u2/screens/searchpage.dart';
import 'package:redsocial_u2/variables.dart';

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
      body: SafeArea(child: pages[_page]),
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
                  'https://scontent.fchm1-1.fna.fbcdn.net/v/t39.30808-6/277368748_4254987277938186_776529483703659197_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeG0F7G7Xoozobb20QnrJ_bCqa2vtRM1tZepra-1EzW1l_foMC0ye7rw-XXLHTePlG-ioAgf6ekDwNsDEdWNKDF0&_nc_ohc=MoGJf4J837UAX_-aSl8&_nc_ht=scontent.fchm1-1.fna&oh=00_AfAEsQDW0UGMiIZnK7RUgmb8Z-nizCDRHX4kUd94B7Lt_Q&oe=6381F9A6'),
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
