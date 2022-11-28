import 'package:flutter/material.dart';
import 'package:redsocial_u2/index.dart';
import 'package:redsocial_u2/variables.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget(
      {super.key,
      required this.onPressed,
      this.bg,
      this.border,
      this.radioBorde,
      this.padding,
      this.texto,
      this.width,
      this.heigth,
      this.textcolor,
      this.fontsize});
  final Function onPressed;
  final Color? bg;
  final Color? border;
  final BorderRadiusGeometry? radioBorde;
  final EdgeInsetsGeometry? padding;
  final Color? textcolor;
  final String? texto;
  final double? width;
  final double? heigth;
  final double? fontsize;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: width,
      height: heigth,
      padding: padding,
      onPressed: onPressed(),
      shape: RoundedRectangleBorder(
          borderRadius: radioBorde!,
          side: BorderSide(width: 1.5, color: border!)),
/*       disabledColor: verdeClaro, */
      color: bg,
      elevation: 1,
      child: Text(
        texto!,
        style: GoogleFonts.poppins(color: textcolor, fontSize: fontsize),
      ),
    );
  }
}
