import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mr_oil/controller.dart';

class TabsWeb extends StatefulWidget {
  final title;
  final color;
  const TabsWeb({
    Key? key,
    this.title,
    this.color,
  }) : super(key: key);

  @override
  State<TabsWeb> createState() => _TabsWebState();
}

class _TabsWebState extends State<TabsWeb> {
  final Controller controller = Get.put(Controller());
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isSelected = true;
        });
      },
      onExit: (_) {
        setState(() {
          isSelected = false;
        });
      },
      child: AnimatedDefaultTextStyle(
        style: isSelected
            ? GoogleFonts.roboto(
                shadows: [
                  const Shadow(
                    color: Colors.black,
                    offset: Offset(0, -8),
                  ),
                ],
                fontSize: 20.0,
                color: Colors.transparent,
                decoration: TextDecoration.underline,
                decorationThickness: 2,
                decorationColor: Colors.deepOrange,
              )
            : GoogleFonts.roboto(
                color: widget.color,
                fontSize: 20.0,
              ),
        child: Text(
          widget.title,
        ),
        duration: const Duration(milliseconds: 100),
        curve: Curves.bounceIn,
      ),
    );
  }
}
