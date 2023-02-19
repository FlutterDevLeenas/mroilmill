import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mr_oil/controller.dart';
import 'package:mr_oil/widget/tabweb.dart';

void main() {
  runApp(const MyApp());
}

appRoutes() => [
      GetPage(
        name: '/myhome',
        page: () => const MyHome(),
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
            initialRoute: '/myhome',
            getPages: appRoutes(),
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
          );
        });
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final Controller controller = Get.put(Controller());
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _key,
      endDrawer: Drawer(
          child: ListView(
        dragStartBehavior: DragStartBehavior.start,
        clipBehavior: Clip.hardEdge,
        padding: const EdgeInsets.all(0),
        children: [
          SizedBox(
            height: 20.h,
          ),
          DrawerTile(
            icon: const Icon(Icons.person),
            ontap: () {
              setState(() {
                controller.index = 0;
                _key.currentState!.closeEndDrawer();
              });
            },
            title: 'Home',
            color: controller.index == 0 ? Colors.deepOrange : Colors.black,
          ),
          DrawerTile(
            icon: const Icon(Icons.search),
            ontap: () {
              setState(() {
                controller.index = 1;
                _key.currentState!.closeEndDrawer();
              });
            },
            title: 'About Us',
            color: controller.index == 1 ? Colors.deepOrange : Colors.black,
          ),
          DrawerTile(
            icon: const Icon(Icons.add_box_outlined),
            ontap: () {
              setState(() {
                controller.index = 2;
                _key.currentState!.closeEndDrawer();
              });
            },
            title: 'Products',
            color: controller.index == 2 ? Colors.deepOrange : Colors.black,
          ),
          DrawerTile(
            icon: const Icon(Icons.work_history_outlined),
            ontap: () {
              setState(() {
                controller.index = 3;
                _key.currentState!.closeEndDrawer();
              });
            },
            title: 'Process',
            color: controller.index == 3 ? Colors.deepOrange : Colors.black,
          ),
          DrawerTile(
            icon: const Icon(Icons.event),
            ontap: () {
              setState(() {
                controller.index = 4;
                _key.currentState!.closeEndDrawer();
              });
            },
            title: 'Benifits',
            color: controller.index == 4 ? Colors.deepOrange : Colors.black,
          ),
          DrawerTile(
            icon: const Icon(Icons.groups_outlined),
            ontap: () {
              setState(() {
                controller.index = 5;
                _key.currentState!.closeEndDrawer();
              });
            },
            title: 'Contact Us',
            color: controller.index == 5 ? Colors.deepOrange : Colors.black,
          ),
        ],
      )),
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        leadingWidth: 50.w,
        toolbarHeight: 80.h,
        leading: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          child: Image.asset(
            "assets/mroil.jpg",
            fit: BoxFit.contain,
            height: 50.h,
            width: 50.w,
          ),
        ),
        title: width > 700
            ? Row(
                children: [
                  const Spacer(
                    flex: 3,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        controller.index = 0;
                      });
                    },
                    child: TabsWeb(
                      color: controller.index == 0
                          ? Colors.deepOrange
                          : Colors.black,
                      title: "Home",
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        controller.index = 1;
                      });
                    },
                    child: TabsWeb(
                      color: controller.index == 1
                          ? Colors.deepOrange
                          : Colors.black,
                      title: "About",
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        controller.index = 2;
                      });
                    },
                    child: TabsWeb(
                      color: controller.index == 2
                          ? Colors.deepOrange
                          : Colors.black,
                      title: "Product",
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        controller.index = 3;
                      });
                    },
                    child: TabsWeb(
                      color: controller.index == 3
                          ? Colors.deepOrange
                          : Colors.black,
                      title: "Process",
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        controller.index = 4;
                      });
                    },
                    child: TabsWeb(
                      color: controller.index == 4
                          ? Colors.deepOrange
                          : Colors.black,
                      title: "Benifit",
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        controller.index = 5;
                      });
                    },
                    child: TabsWeb(
                      color: controller.index == 5
                          ? Colors.deepOrange
                          : Colors.black,
                      title: "Contact Us",
                    ),
                  ),
                  const Spacer(),
                ],
              )
            : Container(),
        actions: [
          width < 700
              ? GestureDetector(
                  onTap: () {
                    _key.currentState!.openEndDrawer();
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Icon(
                      Icons.menu,
                      size: 25,
                    ),
                  ))
              : Container(),
        ],
      ),
      body: GetBuilder<Controller>(
          init: Controller(),
          builder: (context) {
            return controller.screens[controller.index];
          }),
    );
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
