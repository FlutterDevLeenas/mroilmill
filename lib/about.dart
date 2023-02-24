import 'dart:html';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mr_oil/main.dart';
import 'package:mr_oil/widget/button.dart';
import 'package:mr_oil/widget/tabweb.dart';
import 'dart:ui' as ui;
import 'controller.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
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
              Get.rootDelegate.toNamed('/');
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
              Get.rootDelegate.toNamed('/about');
              setState(() {
                _key.currentState!.closeEndDrawer();
              });
            },
            title: 'About Us',
            color: Colors.deepOrange,
          ),
          DrawerTile(
            icon: const Icon(Icons.add_box_outlined),
            ontap: () {
              Get.rootDelegate.toNamed('/products');
              setState(() {
                _key.currentState!.closeEndDrawer();
              });
            },
            title: 'Products',
            color: Colors.black,
          ),
          DrawerTile(
            icon: const Icon(Icons.work_history_outlined),
            ontap: () {
              Get.rootDelegate.toNamed('/process');
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
              Get.rootDelegate.toNamed('/benifits');
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
              Get.rootDelegate.toNamed('/contact');
              setState(() {
                _key.currentState!.closeEndDrawer();
              });
            },
            title: 'Contact Us',
            color: Colors.black,
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
        title: width > 800
            ? Row(
                children: [
                  const Spacer(
                    flex: 3,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.rootDelegate.toNamed('/');
                    },
                    child: const TabsWeb(
                      color: Colors.black,
                      title: "Home",
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Get.rootDelegate.toNamed('/about');
                    },
                    child: const TabsWeb(
                      color: Colors.deepOrange,
                      title: "About Us",
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Get.rootDelegate.toNamed('/products');
                    },
                    child: const TabsWeb(
                      color: Colors.black,
                      title: "Products",
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Get.rootDelegate.toNamed('/process');
                    },
                    child: const TabsWeb(
                      color: Colors.black,
                      title: "Process",
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Get.rootDelegate.toNamed('/benifits');
                    },
                    child: const TabsWeb(
                      color: Colors.black,
                      title: "Benifits",
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Get.rootDelegate.toNamed('/contact');
                    },
                    child: const TabsWeb(
                      color: Colors.black,
                      title: "Contact Us",
                    ),
                  ),
                  const Spacer(),
                ],
              )
            : Container(),
        actions: [
          width < 800
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
                        'About Us',
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
                        'About Us',
                        style: GoogleFonts.poppins(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ),
            const SizedBox(
              height: 40,
            ),
            width > 750
                ? Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 20),
                    child: Container(
                      width: width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 400,
                            width: width > 1000 ? 350 : 250,
                            child: const Image(
                              image: AssetImage('assets/logo.jpg'),
                              fit: BoxFit.contain,
                            ),
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          SizedBox(
                            width: width > 1000 ? 500 : 350,
                            child: Column(
                              children: [
                                Text(
                                  'MR SESAME OIL',
                                  style: GoogleFonts.poppins(
                                      fontSize: 25,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'MR Oil Mill is a transition of earlier SMS Oil Mill, the respective founders are Srinivasan M and Renganathan M. As a start-up during early days the raw sesame seeds have been taken to the Mills that had fine machinery. As of now MR Oil Mill has endeavoured and toiled hard, as the result we have grown wider to use our own machineries to produce clear, healthy and pure sesame oil that is extracted from raw red, black and white sesamum indicum that is sesame seeds. The extra care comes with a double filtration process which brings out the right viscosity in a balanced ratio with pleasant, remarkably stable and edible oil. A healthy life and a healthy society behind the brand MR Oil Mill Pvt Ltd.',
                                  style: GoogleFonts.poppins(
                                      fontSize: width > 1000 ? 18 : 16,
                                      color: Colors.black87,
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Container(
                      width: width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 400,
                            width: width,
                            child: const Image(
                              image: AssetImage('assets/logo.jpg'),
                              fit: BoxFit.contain,
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          SizedBox(
                            width: 350,
                            child: Column(
                              children: [
                                Text(
                                  'MR SESAME OIL',
                                  style: GoogleFonts.poppins(
                                      fontSize: 25,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'MR Oil Mill is a transition of earlier SMS Oil Mill, the respective founders are Srinivasan M and Renganathan M. As a start-up during early days the raw sesame seeds have been taken to the Mills that had fine machinery. As of now MR Oil Mill has endeavoured and toiled hard, as the result we have grown wider to use our own machineries to produce clear, healthy and pure sesame oil that is extracted from raw red, black and white sesamum indicum that is sesame seeds. The extra care comes with a double filtration process which brings out the right viscosity in a balanced ratio with pleasant, remarkably stable and edible oil. A healthy life and a healthy society behind the brand MR Oil Mill Pvt Ltd.',
                                  style: GoogleFonts.poppins(
                                      fontSize: width > 1000 ? 18 : 16,
                                      color: Colors.black87,
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
            const SizedBox(
              height: 20,
            ),
            width > 750
                ? Container(
                    width: width,
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: width > 900 ? 400 : 300,
                          height: width > 900 ? 200 : 200,
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    offset: const Offset(0, 10),
                                    blurRadius: 20,
                                    color: Colors.grey.shade300),
                              ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Vision',
                                style: GoogleFonts.poppins(
                                    fontSize: width > 900 ? 20 : 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'To sustain the faith with credibility and to increase the availability of services to all the customers with professional transparency.',
                                style: GoogleFonts.poppins(
                                    fontSize: width > 900 ? 18 : 16,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        Container(
                          width: width > 900 ? 400 : 300,
                          height: width > 900 ? 200 : 200,
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    offset: const Offset(0, 10),
                                    blurRadius: 20,
                                    color: Colors.grey.shade300),
                              ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Mission',
                                style: GoogleFonts.poppins(
                                    fontSize: width > 900 ? 20 : 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Enhancing the quality, precise time of delivery and provide an affordable product to the customer.',
                                style: GoogleFonts.poppins(
                                    fontSize: width > 900 ? 18 : 16,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                : Container(
                    width: width,
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: width > 900 ? 400 : 300,
                          height: width > 900 ? 200 : 200,
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    offset: const Offset(0, 10),
                                    blurRadius: 20,
                                    color: Colors.grey.shade300),
                              ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Vision',
                                style: GoogleFonts.poppins(
                                    fontSize: width > 900 ? 20 : 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'To sustain the faith with credibility and to increase the availability of services to all the customers with professional transparency.',
                                style: GoogleFonts.poppins(
                                    fontSize: width > 900 ? 18 : 16,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Container(
                          width: width > 900 ? 400 : 300,
                          height: width > 900 ? 200 : 200,
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    offset: const Offset(0, 10),
                                    blurRadius: 20,
                                    color: Colors.grey.shade300),
                              ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Mission',
                                style: GoogleFonts.poppins(
                                    fontSize: width > 900 ? 20 : 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Enhancing the quality, precise time of delivery and provide an affordable product to the customer.',
                                style: GoogleFonts.poppins(
                                    fontSize: width > 900 ? 18 : 16,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: width > 600 ? 300 : 200,
              width: width,
              decoration: BoxDecoration(
                color: const Color(0xffffb38a).withOpacity(1),
                borderRadius: BorderRadius.only(
                  topLeft: width > 600
                      ? const Radius.circular(100)
                      : const Radius.circular(50),
                  topRight: width > 600
                      ? const Radius.circular(100)
                      : const Radius.circular(50),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'WHAT ARE YOU WAITING FOR?',
                    style: GoogleFonts.poppins(
                        fontSize: width > 600 ? 18 : 15,
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Get Started with MR OIL',
                    style: GoogleFonts.poppins(
                        fontSize: width > 600 ? 30 : 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w900),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Button(
                      onpress: () {
                        Get.rootDelegate.toNamed('/contact');
                      },
                      text: 'Contact Us',
                      size: width > 600 ? 20 : 15),
                ],
              ),
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
                                  'No. 33/3, Anna Nagar,\nSangliyandapuram,\nTrichy - 620001.\n\nPhone: 0431-2964558\nCell: 8667035286',
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
                                        'No. 33/3, Anna Nagar,\nSangliyandapuram,\nTrichy - 620001.\n\nPhone: 0431-2964558\nCell: 8667035286',
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
                                    'No. 33/3, Anna Nagar,\nSangliyandapuram,\nTrichy - 620001.\n\nPhone: 0431-2964558\nCell: 8667035286',
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
