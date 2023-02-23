import 'dart:html';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mr_oil/widget/tabweb.dart';

import 'benifit.dart';
import 'dart:ui' as ui;

import 'controller.dart';
import 'main.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  final Controller controller = Get.put(Controller());
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
  final IFrameElement _iframeElement = IFrameElement();

  Widget? _iframeWidget;
  @override
  void initState() {
    super.initState();
    _iframeElement.style.height = '100%';
    _iframeElement.style.width = '100%';

    _iframeElement.src =
        "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.1875774157497!2d78.70661581480184!3d10.796941061767114!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3baaf54cfc99eeb7%3A0x91c47d41b775e5!2sMR%20Oil%20Mill!5e0!3m2!1sen!2sin!4v1677068448771!5m2!1sen!2sin";
    _iframeElement.style.border = 'none';

    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
      'iframeElement',
      (int viewId) => _iframeElement,
    );

    _iframeWidget = HtmlElementView(
      key: UniqueKey(),
      viewType: 'iframeElement',
    );
  }

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
              Get.toNamed('/home');
              setState(() {
                _key.currentState!.closeEndDrawer();
              });
            },
            title: 'Home',
            color: Colors.black,
          ),
          DrawerTile(
            icon: const Icon(Icons.search),
            ontap: () {
              Get.toNamed('/about');
              setState(() {
                _key.currentState!.closeEndDrawer();
              });
            },
            title: 'About Us',
            color: Colors.black,
          ),
          DrawerTile(
            icon: const Icon(Icons.add_box_outlined),
            ontap: () {
              setState(() {
                Get.toNamed('/products');

                _key.currentState!.closeEndDrawer();
              });
            },
            title: 'Products',
            color: Colors.black,
          ),
          DrawerTile(
            icon: const Icon(Icons.work_history_outlined),
            ontap: () {
              Get.toNamed('/process');
              setState(() {
                _key.currentState!.closeEndDrawer();
              });
            },
            title: 'Process',
            color: Colors.black,
          ),
          DrawerTile(
            icon: const Icon(Icons.event),
            ontap: () {
              Get.toNamed('/benifits');
              setState(() {
                _key.currentState!.closeEndDrawer();
              });
            },
            title: 'Benifits',
            color: Colors.black,
          ),
          DrawerTile(
            icon: const Icon(Icons.groups_outlined),
            ontap: () {
              Get.toNamed('/contact');
              setState(() {
                _key.currentState!.closeEndDrawer();
              });
            },
            title: 'Contact Us',
            color: Colors.deepOrange,
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
                      Get.toNamed('/home');
                    },
                    child: const TabsWeb(
                      color: Colors.black,
                      title: "Home",
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed('/about');
                    },
                    child: const TabsWeb(
                      color: Colors.black,
                      title: "About Us",
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed('/products');
                    },
                    child: const TabsWeb(
                      color: Colors.black,
                      title: "Products",
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed('/process');
                    },
                    child: const TabsWeb(
                      color: Colors.black,
                      title: "Process",
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed('/benifits');
                    },
                    child: const TabsWeb(
                      color: Colors.black,
                      title: "Benifits",
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed('/contact');
                    },
                    child: const TabsWeb(
                      color: Colors.deepOrange,
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            width > 600
                ? Container(
                    height: 200,
                    width: width,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(100),
                          bottomRight: Radius.circular(100),
                        ),
                        color: const Color(0xffffb38a).withOpacity(1),
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(0, 10),
                            color: Colors.grey.shade300,
                            blurRadius: 20,
                          )
                        ]),
                    child: Center(
                      child: Text(
                        'Contact Us',
                        style: GoogleFonts.poppins(
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  )
                : Container(
                    height: 150,
                    width: width,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        ),
                        color: const Color(0xffffb38a).withOpacity(1),
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(0, 10),
                            color: Colors.grey.shade300,
                            blurRadius: 20,
                          )
                        ]),
                    child: Center(
                      child: Text(
                        'Contact Us',
                        style: GoogleFonts.poppins(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ),
            const SizedBox(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Wrap(
                runSpacing: 20,
                spacing: 20,
                alignment: WrapAlignment.center,
                runAlignment: WrapAlignment.center,
                children: [
                  TileBenifit(
                      active: true,
                      text: '0431-2300250\n9443874258',
                      heading: 'Mobile Number',
                      icon: const Icon(Icons.phone_rounded),
                      iconcolor: Colors.red.shade100),
                  TileBenifit(
                      active: true,
                      text: 'hari@gmail.com',
                      heading: 'Email',
                      icon: const Icon(Icons.mail),
                      iconcolor: Colors.green.shade100),
                  TileBenifit(
                      active: true,
                      text:
                          'No. 33/3, Anna Nagar,\nSangliyandapuram,\nTrichy - 620001.',
                      heading: 'Address',
                      icon: const Icon(Icons.location_city),
                      iconcolor: Colors.blue.shade100),
                ],
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            width > 900
                ? Container(
                    height: 400,
                    width: width,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(0, 10),
                            blurRadius: 20,
                            color: Colors.grey.shade500),
                      ],
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Manufactured & Marketed By',
                                  style: GoogleFonts.poppins(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      image: const DecorationImage(
                                          image: AssetImage('assets/mroil.jpg'),
                                          fit: BoxFit.cover),
                                      boxShadow: [
                                        BoxShadow(
                                            offset: const Offset(0, 10),
                                            color: Colors.grey.shade300,
                                            blurRadius: 20)
                                      ]),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          Expanded(
                            flex: 1,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Address',
                                  style: GoogleFonts.poppins(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'No. 33/3, Anna Nagar,\nSangliyandapuram,\nTrichy - 620001.\n\nPhone: 0431 2300250\nCell: 9443874258',
                                  style: GoogleFonts.poppins(
                                      fontSize: 13,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 60,
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                                height: 300,
                                width: 600,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: _iframeWidget!),
                          ),
                        ],
                      ),
                    ),
                  )
                : width > 600
                    ? Container(
                        height: 600,
                        width: width,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                offset: const Offset(0, 10),
                                blurRadius: 20,
                                color: Colors.grey.shade500),
                          ],
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 20),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Manufactured & Marketed By',
                                        style: GoogleFonts.poppins(
                                            fontSize: 15,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Container(
                                        height: 80,
                                        width: 80,
                                        decoration: BoxDecoration(
                                            image: const DecorationImage(
                                                image: AssetImage(
                                                    'assets/mroil.jpg'),
                                                fit: BoxFit.cover),
                                            boxShadow: [
                                              BoxShadow(
                                                  offset: const Offset(0, 10),
                                                  color: Colors.grey.shade300,
                                                  blurRadius: 20)
                                            ]),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 40,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Address',
                                        style: GoogleFonts.poppins(
                                            fontSize: 15,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        'No. 33/3, Anna Nagar,\nSangliyandapuram,\nTrichy - 620001.\n\nPhone: 0431 2300250\nCell: 9443874258',
                                        style: GoogleFonts.poppins(
                                            fontSize: 13,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 60,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              Container(
                                  height: 300,
                                  width: 600,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: _iframeWidget!),
                            ],
                          ),
                        ),
                      )
                    : Container(
                        height: 800,
                        width: width,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                offset: const Offset(0, 10),
                                blurRadius: 20,
                                color: Colors.grey.shade500),
                          ],
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Manufactured & Marketed By',
                                    style: GoogleFonts.poppins(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    height: 80,
                                    width: 80,
                                    decoration: BoxDecoration(
                                        image: const DecorationImage(
                                            image:
                                                AssetImage('assets/mroil.jpg'),
                                            fit: BoxFit.cover),
                                        boxShadow: [
                                          BoxShadow(
                                              offset: const Offset(0, 10),
                                              color: Colors.grey.shade300,
                                              blurRadius: 20)
                                        ]),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Address',
                                    style: GoogleFonts.poppins(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'No. 33/3, Anna Nagar,\nSangliyandapuram,\nTrichy - 620001.\n\nPhone: 0431 2300250\nCell: 9443874258',
                                    style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                  height: 300,
                                  width: 600,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: _iframeWidget!),
                            ],
                          ),
                        ),
                      ),
          ],
        ),
      ),
    );
  }
}
