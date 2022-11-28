import 'package:flutter/material.dart';
import 'package:redsocial_u2/modals/reels.dart';

import '../index.dart';

class ReelSideActionBar extends StatefulWidget {
  const ReelSideActionBar({super.key, required this.reel});
  final Reel reel;

  @override
  State<ReelSideActionBar> createState() => _ReelSideActionBarState();
}

class _ReelSideActionBarState extends State<ReelSideActionBar> {
  final double _iconSize = 36;
  bool liked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          onPressed: () => {
            setState(() {
              liked = !liked;
            })
          },
          icon: Icon(liked ? Iconsax.heart : Iconsax.heart5),
          iconSize: _iconSize,
          color: !liked ? Colors.red : Colors.white,
        ),
        Text(
          widget.reel.totalLikes,
          style: const TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        const SizedBox(
          height: 25,
        ),
        IconButton(
          onPressed: () => {},
          icon: const Icon(Iconsax.message),
          iconSize: _iconSize,
          color: Colors.white,
        ),
        Text(
          widget.reel.totalComments,
          style: const TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        const SizedBox(
          height: 25,
        ),
        IconButton(
          onPressed: () => {},
          icon: const Icon(Iconsax.send_24),
          iconSize: _iconSize,
          color: Colors.white,
        ),
        const SizedBox(
          height: 25,
        ),
        IconButton(
          onPressed: () => {},
          icon: const Icon(Icons.more_vert),
          iconSize: _iconSize,
          color: Colors.white,
        ),
        const SizedBox(
          height: 25,
        ),
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 2),
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(widget.reel.postedBy.profileImageUrl),
            ),
          ),
        ),
        const SizedBox(
          height: 95,
        ),
      ],
    );
  }
}
