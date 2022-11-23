// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:redsocial_u2/index.dart';

class PerfilScreen extends StatelessWidget {
  const PerfilScreen({super.key, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 260,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  child: Image.network(
                    'https://cdn.pixabay.com/photo/2022/07/29/05/22/alps-7351077__340.jpg',
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 15,
                  left: 154,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        'https://cdn.pixabay.com/photo/2022/10/19/01/02/woman-7531315__340.png'),
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 20,
                  child: IconButton(
                    onPressed: () => onPressed!(),
                    icon: Icon(
                      Iconsax.arrow_left_2,
                      color: Colors.white,
                    ),
                  ).frosted(
                    frostColor: Colors.white,
                    blur: 3,
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ],
            ),
          ),
          Text(
            'Anderson Ferrer',
            style:
                GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 24),
          ),
          Text(
            '@ferrer2801',
            style: GoogleFonts.poppins(fontSize: 16, color: Colors.grey),
          ),
        ],
      ),
    );
  }

  final Function? onPressed;
}
