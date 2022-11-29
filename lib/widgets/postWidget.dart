// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:redsocial_u2/index.dart';

class PostWidget extends StatefulWidget {
  const PostWidget({
    super.key,
    this.name,
    this.photo,
    this.image,
    this.date,
    this.likes,
  });
  final String? name;
  final String? photo;
  final String? image;
  final String? date;
  final int? likes;

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  bool saveIcon = false;
  bool favIcon = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(widget.photo!),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.name!,
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500, fontSize: 16),
                        ),
                        Text(
                          widget.date!,
                          style: GoogleFonts.poppins(
                              color: Colors.grey, fontSize: 12),
                        )
                      ],
                    ),
                  ],
                ),
                IconButton(
                    padding: EdgeInsets.all(0),
                    onPressed: () {},
                    icon: Icon(Iconsax.more)),
              ],
            ),
          ),
          Image.network(
            widget.image!,
            height: 280,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 6,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                        padding: const EdgeInsets.all(0),
                        onPressed: () {
                          setState(() {
                            favIcon = !favIcon;
                          });
                        },
                        icon: (!favIcon)
                            ? Icon(
                                Iconsax.heart5,
                                color: verde,
                                size: 26,
                              )
                            : Icon(
                                Iconsax.heart,
                                color:
                                    (!Preferences.theme) ? verde : Colors.white,
                                size: 26,
                              )),
                    IconButton(
                      padding: const EdgeInsets.all(0),
                      onPressed: () {},
                      icon: Icon(Iconsax.message),
                    ),
                    IconButton(
                      iconSize: 24,
                      padding: const EdgeInsets.all(0),
                      onPressed: () {},
                      icon: Icon(
                        Iconsax.send_24,
                        color: (!Preferences.theme) ? verde : Colors.white,
                        size: 26,
                      ),
                    ),
                  ],
                ),
                IconButton(
                    iconSize: 24,
                    padding: const EdgeInsets.all(0),
                    onPressed: () {
                      setState(() {
                        saveIcon = !saveIcon;
                      });
                    },
                    icon: (saveIcon)
                        ? Icon(
                            CupertinoIcons.bookmark,
                            color: (!Preferences.theme) ? verde : Colors.white,
                          )
                        : Icon(
                            CupertinoIcons.bookmark_solid,
                            color: verde,
                          )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${widget.likes!} Me gusta',
                    style: GoogleFonts.poppins(
                        fontSize: 14, fontWeight: FontWeight.w500),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    'Ver todos los comentarios',
                    style:
                        GoogleFonts.poppins(fontSize: 12, color: Colors.grey),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
