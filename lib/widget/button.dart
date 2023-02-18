import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Button extends StatelessWidget {
  final VoidCallback onpress;
  final String text;
  final double size;
  const Button({
    super.key,
    required this.onpress,
    required this.text,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrange),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(color: Colors.red)))),
      onPressed: onpress,
      child: Text(
        text,
        style: GoogleFonts.poppins(
            fontSize: size, color: Colors.white, fontWeight: FontWeight.w500),
      ),
    );
  }
}
