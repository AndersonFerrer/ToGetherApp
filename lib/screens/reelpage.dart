import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:redsocial_u2/index.dart';
import 'package:redsocial_u2/mock_Data.dart/mock.dart';
import 'package:redsocial_u2/widgets/reel_detail.dart';
import 'package:redsocial_u2/widgets/reel_navigation_bar.dart';

class ReelScreen extends StatelessWidget {
  const ReelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        title: Text(
          'Togeels',
          style: GoogleFonts.elMessiri(
              color: Colors.white, fontSize: 36, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            padding: EdgeInsets.only(right: 17),
            onPressed: () => {},
            icon: const Icon(Iconsax.camera),
            color: Colors.white,
            iconSize: 36,
          )
        ],
      ),
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: reels.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(reels[index].imageUrl),
                ),
              ),
              child: Center(
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.black.withOpacity(0.3),
                            Colors.transparent
                          ],
                          begin: const Alignment(0, -0.75),
                          end: const Alignment(0, -0.1),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.black.withOpacity(0.3),
                            Colors.transparent
                          ],
                          end: const Alignment(0, -0.75),
                          begin: const Alignment(0, -0.1),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Flexible(
                              flex: 12,
                              child: ReelDetail(
                                reel: reels[index],
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              child: ReelSideActionBar(
                                reel: reels[index],
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
