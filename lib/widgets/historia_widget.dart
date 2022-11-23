// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:redsocial_u2/variables.dart';

class HistoriaWidget extends StatelessWidget {
  const HistoriaWidget({super.key, this.nombre = 'Anderson'});
  final String? nombre;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12, right: 6, left: 6, bottom: 12),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            child: Padding(
              padding: const EdgeInsets.all(1.5),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://cdn.pixabay.com/photo/2016/08/20/05/38/avatar-1606916_960_720.png'),
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(width: 2, color: verdeClaro),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            nombre!,
            style: GoogleFonts.poppins(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
