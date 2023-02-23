import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mr_oil/about.dart';
import 'package:mr_oil/benifit.dart';
import 'package:mr_oil/contactus.dart';
import 'package:mr_oil/controller.dart';
import 'package:mr_oil/home.dart';
import 'package:mr_oil/process.dart';
import 'package:mr_oil/product.dart';

void main() {
  runApp(const MyApp());
}

appRoutes() => [
      GetPage(
        name: '/home',
        page: () => const Home(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 100),
      ),
      GetPage(
        name: '/about',
        page: () => const About(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 100),
      ),
      GetPage(
        name: '/products',
        page: () => const Product(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 100),
      ),
      GetPage(
        name: '/process',
        page: () => const Process(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 100),
      ),
      GetPage(
        name: '/benifits',
        page: () => const Benefit(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 100),
      ),
      GetPage(
        name: '/contact',
        page: () => const ContactUs(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 100),
      ),
    ];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        minTextAdapt: false,
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            initialRoute: '/home',
            getPages: appRoutes(),
            title: 'MR Oil Mill',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
          );
        });
  }
}

class DrawerTile extends StatelessWidget {
  DrawerTile(
      {Key? key,
      required this.icon,
      required this.ontap,
      required this.title,
      required this.color})
      : super(key: key);
  final Function() ontap;
  final String title;
  final Icon icon;
  final Color color;
  @override
  final Controller controller = Get.put(Controller());
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title:
          Text(title, style: GoogleFonts.poppins(fontSize: 15, color: color)),
      onTap: ontap,
    );
  }
}
