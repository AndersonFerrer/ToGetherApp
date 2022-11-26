// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:redsocial_u2/index.dart';
import 'package:redsocial_u2/screens/search_delegate_screen.dart';
import 'package:redsocial_u2/screens/search_screen.dart';
import 'package:redsocial_u2/variables.dart';

class BodyScreen extends StatefulWidget {
  const BodyScreen({super.key});

  @override
  State<BodyScreen> createState() => _BodyScreenState();
}

class _BodyScreenState extends State<BodyScreen> {
  int _page = 0;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  List<Widget> pages = [
    Home(),
    SearchScreen(),
    ScreenDelegate(title: 'Hello'),
    Text('4'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomAppBar(),
      ),
      body: SizedBox(
        child: Center(
          child: pages[_page],
        ),
      ),
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
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://scontent.fchm1-1.fna.fbcdn.net/v/t39.30808-6/277368748_4254987277938186_776529483703659197_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeG0F7G7Xoozobb20QnrJ_bCqa2vtRM1tZepra-1EzW1l_foMC0ye7rw-XXLHTePlG-ioAgf6ekDwNsDEdWNKDF0&_nc_ohc=MoGJf4J837UAX_-aSl8&_nc_ht=scontent.fchm1-1.fna&oh=00_AfAEsQDW0UGMiIZnK7RUgmb8Z-nizCDRHX4kUd94B7Lt_Q&oe=6381F9A6'),
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

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                'https://cdn.pixabay.com/photo/2015/09/18/00/24/robin-944887_960_720.jpg',
              ),
              radius: 30,
            ),
            SizedBox(width: 24),
            SizedBox(
              width: 250,
              height: 60,
              child: TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 2, color: Colors.grey),
                      borderRadius: BorderRadius.circular(35),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 2, color: Colors.grey),
                      borderRadius: BorderRadius.circular(35),
                    ),
                    hintText: '¿En que estas pensando?',
                    hintStyle: const TextStyle(color: Colors.grey)),
              ),
            )
          ],
        )
      ],
    );
  }
}
