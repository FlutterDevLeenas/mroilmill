import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mr_oil/widget/button.dart';
import 'package:mr_oil/widget/tabweb.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        children: [
          width > 700
              ? Container(
                  decoration: BoxDecoration(
                      color: const Color(0xffffb38a).withOpacity(1),
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(100),
                          bottomRight: Radius.circular(100))),
                  height: 500,
                  width: width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'MR Sesame Oil',
                                style: GoogleFonts.poppins(
                                    fontSize: 25,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w900),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              SizedBox(
                                width: width * 0.3,
                                child: Text(
                                  'Natural method of Extracting oil from Sesame Seeds',
                                  style: GoogleFonts.poppins(
                                      fontSize: 18, color: Colors.black87),
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Button(
                                onpress: () {},
                                text: 'Get Started',
                                size: 15,
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 250,
                          width: width > 800 ? 450 : 350,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: const DecorationImage(
                                  image: AssetImage("assets/allinone.png"),
                                  fit: BoxFit.cover)),
                        ),
                      ],
                    ),
                  ),
                )
              : Container(
                  decoration: BoxDecoration(
                      color: const Color(0xffffb38a).withOpacity(1),
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50))),
                  height: 400,
                  width: width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: SizedBox(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'MR Sesame Oil',
                                  style: GoogleFonts.poppins(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w900),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                SizedBox(
                                  width: width * 0.7,
                                  child: Text(
                                    'Natural method of Extracting oil from Sesame Seeds',
                                    style: GoogleFonts.poppins(
                                        fontSize: 15, color: Colors.black87),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Button(
                                  onpress: () {},
                                  text: 'Get Started',
                                  size: 12,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 200,
                          margin: const EdgeInsets.symmetric(horizontal: 40),
                          width: width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: const DecorationImage(
                                  image: AssetImage("assets/allinone.png"),
                                  fit: BoxFit.cover)),
                        ),
                      ],
                    ),
                  ),
                ),
          width > 600
              ? Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
                  child: Column(
                    children: [
                      Text(
                        'About MR Sesame Oil',
                        style: GoogleFonts.poppins(
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.w900),
                      ),
                      Button(
                        onpress: () {},
                        text: 'About Us ->',
                        size: 15,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      width > 950
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Tile(
                                  heading: 'Good Healthy',
                                  icon: const Icon(
                                    Icons.health_and_safety_outlined,
                                    size: 25,
                                    color: Colors.red,
                                  ),
                                  text:
                                      'like providing heart-healthy fats, combating inflamation, and protecting skin from sun damage.',
                                  iconcolor: Colors.red.shade200,
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Tile(
                                    heading: 'AGMARK Quality',
                                    icon: const Icon(
                                      Icons.fingerprint,
                                      size: 25,
                                      color: Colors.blue,
                                    ),
                                    text:
                                        'Pure & Sure Organic Sesame Oil is also known as Gingelly Cooking oil is a tiny sesame seed oil seeds.',
                                    iconcolor: Colors.blue.shade200,
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Tile(
                                  heading: '37+ Years',
                                  icon: const Icon(
                                    Icons.schedule,
                                    size: 25,
                                    color: Colors.green,
                                  ),
                                  text:
                                      'We have a offering 37 years good health and happiness to the customers.',
                                  iconcolor: Colors.green.shade200,
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Tile(
                                    heading: 'Affordable Price',
                                    icon: const Icon(
                                      Icons.savings_outlined,
                                      size: 25,
                                      color: Colors.yellow,
                                    ),
                                    text:
                                        'Best Price in the city and better than any supermarket.',
                                    iconcolor: Colors.yellow.shade200,
                                  ),
                                ),
                              ],
                            )
                          : Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Tile(
                                      heading: 'Good Healthy',
                                      icon: const Icon(
                                        Icons.health_and_safety_outlined,
                                        size: 25,
                                        color: Colors.red,
                                      ),
                                      text:
                                          'like providing heart-healthy fats, combating inflamation, and protecting skin from sun damage.',
                                      iconcolor: Colors.red.shade200,
                                    ),
                                    const SizedBox(
                                      width: 40,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: Tile(
                                        heading: 'AGMARK Quality',
                                        icon: const Icon(
                                          Icons.fingerprint,
                                          size: 25,
                                          color: Colors.blue,
                                        ),
                                        text:
                                            'Pure & Sure Organic Sesame Oil is also known as Gingelly Cooking oil is a tiny sesame seed oil seeds.',
                                        iconcolor: Colors.blue.shade200,
                                      ),
                                    ),
                                  ],
                                ),
                                // ignore: prefer_const_constructors
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Tile(
                                      heading: '37+ Years',
                                      icon: const Icon(
                                        Icons.schedule,
                                        size: 25,
                                        color: Colors.green,
                                      ),
                                      text:
                                          'We have a offering 37 years good health and happiness to the customers.',
                                      iconcolor: Colors.green.shade200,
                                    ),
                                    const SizedBox(
                                      width: 40,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: Tile(
                                        heading: 'Affordable Price',
                                        icon: const Icon(
                                          Icons.savings_outlined,
                                          size: 25,
                                          color: Colors.yellow,
                                        ),
                                        text:
                                            'Best Price in the city and better than any supermarket.',
                                        iconcolor: Colors.yellow.shade200,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                    ],
                  ),
                )
              : Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 60, vertical: 40),
                  child: Column(
                    children: [
                      Text(
                        'About MR Sesame Oil',
                        style: GoogleFonts.poppins(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w900),
                      ),
                      Button(
                        onpress: () {},
                        text: 'About Us ->',
                        size: 10,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Column(
                        children: [
                          Tile(
                            sizedbox: 15,
                            beforeheading: 10,
                            size: width,
                            heading: 'Good Healthy',
                            icon: const Icon(
                              Icons.health_and_safety_outlined,
                              size: 25,
                              color: Colors.red,
                            ),
                            text:
                                'like providing heart-healthy fats, combating inflamation, and protecting skin from sun damage.',
                            iconcolor: Colors.red.shade200,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Tile(
                            sizedbox: 15,
                            beforeheading: 10,
                            size: width,
                            heading: 'AGMARK Quality',
                            icon: const Icon(
                              Icons.fingerprint,
                              size: 25,
                              color: Colors.blue,
                            ),
                            text:
                                'Pure & Sure Organic Sesame Oil is also known as Gingelly Cooking oil is a tiny sesame seed oil seeds.',
                            iconcolor: Colors.blue.shade200,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Tile(
                            sizedbox: 15,
                            beforeheading: 10,
                            size: width,
                            heading: '37+ Years',
                            icon: const Icon(
                              Icons.schedule,
                              size: 25,
                              color: Colors.green,
                            ),
                            text:
                                'We have a offering 37 years good health and happiness to the customers.',
                            iconcolor: Colors.green.shade200,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Tile(
                            sizedbox: 15,
                            beforeheading: 10,
                            size: width,
                            heading: 'Affordable Price',
                            icon: const Icon(
                              Icons.savings_outlined,
                              size: 25,
                              color: Colors.yellow,
                            ),
                            text:
                                'Best Price in the city and better than any supermarket.',
                            iconcolor: Colors.yellow.shade200,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
          const SizedBox(
            height: 40,
          ),
          width > 600
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: width < 950
                      ? Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                AllProductBox(
                                  img: 'assets/fourbottle.png',
                                  text1: '100 ml, 200 ml',
                                  text2: '500 ml, 1000 ml',
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                AllProductBox(
                                  img: 'assets/twopouch.png',
                                  text1: '500 ml',
                                  text2: '1000 ml',
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                AllProductBox(
                                  img: 'assets/twotin.png',
                                  text1: '5 l',
                                  text2: '15 kg',
                                ),
                              ],
                            ),
                          ],
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            AllProductBox(
                              img: 'assets/fourbottle.png',
                              text1: '100 ml, 200 ml',
                              text2: '500 ml, 1000 ml',
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            AllProductBox(
                              img: 'assets/twopouch.png',
                              text1: '500 ml',
                              text2: '1000 ml',
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            AllProductBox(
                              img: 'assets/twotin.png',
                              text1: '5 l',
                              text2: '15 kg',
                            ),
                          ],
                        ),
                )
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: Column(
                    children: [
                      AllProductBox(
                        img: 'assets/fourbottle.png',
                        text1: '100 ml, 200 ml',
                        text2: '500 ml, 1000 ml',
                        size: width,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      AllProductBox(
                        img: 'assets/twopouch.png',
                        text1: '500 ml',
                        text2: '1000 ml',
                        size: width,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      AllProductBox(
                        img: 'assets/twotin.png',
                        text1: '5 l',
                        text2: '15 kg',
                        size: width,
                      ),
                    ],
                  ),
                ),
          const SizedBox(
            height: 40,
          ),
          Container(
            height: width > 600 ? 300 : 250,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: width > 600
                    ? const Radius.circular(100)
                    : const Radius.circular(50),
                bottomLeft: width > 600
                    ? const Radius.circular(100)
                    : const Radius.circular(50),
              ),
              color: const Color(0xffffb38a),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Take Your Health to Next \nLevel!',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      fontSize: width > 600 ? 30 : 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w900),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'You can buy Sesame Oil offline at best prices on MR oil mill',
                  style: GoogleFonts.poppins(
                      fontSize: width > 600 ? 15 : 12,
                      color: Colors.black87,
                      fontWeight: FontWeight.normal),
                ),
                const SizedBox(
                  height: 20,
                ),
                CircleAvatar(
                  backgroundColor: Colors.deepOrange,
                  radius: width > 600 ? 25 : 20,
                  child: const Center(
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          width > 700
              ? SizedBox(
                  height: 500,
                  width: width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: width > 800 ? 400 : 300,
                        width: width > 800 ? 450 : 350,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  offset: const Offset(0, 10),
                                  blurRadius: 20,
                                  color: Colors.grey.shade300)
                            ]),
                        child: Image.asset(
                          'assets/cuscare.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Communicate with\nOur Expert Team',
                            style: GoogleFonts.poppins(
                                fontSize: width > 600 ? 30 : 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w900),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            width: 300,
                            child: Text(
                              'Our team is available to deal with your inquery call.',
                              style: GoogleFonts.poppins(
                                  fontSize: width > 600 ? 15 : 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Button(
                            onpress: () {},
                            text: 'Contact Us',
                            size: 12,
                          ),
                        ],
                      )
                    ],
                  ),
                )
              : SizedBox(
                  width: width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 250,
                          width: 250,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    offset: const Offset(0, 10),
                                    blurRadius: 20,
                                    color: Colors.grey.shade300)
                              ]),
                          child: Image.asset(
                            'assets/cuscare.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Communicate with Our Expert Team',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  fontSize: width > 600 ? 30 : 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Our team is available to deal with your inquery call.',
                              style: GoogleFonts.poppins(
                                  fontSize: width > 600 ? 15 : 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Button(
                              onpress: () {},
                              text: 'Contact Us',
                              size: 12,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
          const SizedBox(
            height: 20,
          ),
          width > 1000
              ? Container(
                  height: 500,
                  width: width,
                  decoration: BoxDecoration(
                    color: const Color(0xffffb38a).withOpacity(1),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.deepOrange,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Center(child: Icon(Icons.message)),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'What Our Customers Are Saying?',
                        style: GoogleFonts.poppins(
                            fontSize: width > 600 ? 30 : 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w900),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Textmonial(
                            width: width,
                            name: 'Sudha',
                            place: 'Trichy',
                            text:
                                'I am using this oil from 2018. I am addict for this oil. Its smell and taste was good.',
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          Textmonial(
                            width: width,
                            name: 'Jagan',
                            place: 'Trichy',
                            text:
                                'Its good for health. Mr oils give latest manufactured oil. So always i am using fresh product.',
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          Textmonial(
                            width: width,
                            name: 'Kavitha',
                            place: 'Chennai',
                            text:
                                'This sesame oil from organic product. This product was trusted product. So give some good health for me. ',
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              : Container(
                  padding: const EdgeInsets.all(50),
                  width: width,
                  decoration: BoxDecoration(
                    color: const Color(0xffffb38a).withOpacity(1),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.deepOrange,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Center(child: Icon(Icons.message)),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'What Our Customers Are Saying?',
                        style: GoogleFonts.poppins(
                            fontSize: width > 600 ? 30 : 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w900),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Textmonial(
                        width: width,
                        name: 'Sudha',
                        place: 'Trichy',
                        text:
                            'I am using this oil from 2018. I am addict for this oil. Its smell and taste was good.',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Textmonial(
                        width: width,
                        name: 'Jagan',
                        place: 'Trichy',
                        text:
                            'Its good for health. Mr oils give latest manufactured oil. So always i am using fresh product.',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Textmonial(
                        width: width,
                        name: 'Kavitha',
                        place: 'Chennai',
                        text:
                            'This sesame oil from organic product. This product was trusted product. So give some good health for me. ',
                      ),
                    ],
                  ),
                ),
        ],
      ),
    );
  }
}

class Textmonial extends StatelessWidget {
  const Textmonial({
    super.key,
    required this.width,
    required this.text,
    required this.name,
    required this.place,
  });

  final double width;
  final String text;
  final String name;
  final String place;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Color(0xffffb38a).withOpacity(1),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 10),
              blurRadius: 10,
              color: Colors.deepOrange.shade300,
            ),
          ]),
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            text,
            style: GoogleFonts.poppins(
                fontSize: width > 600 ? 15 : 12,
                color: Colors.black87,
                fontWeight: FontWeight.normal),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            name,
            style: GoogleFonts.poppins(
                fontSize: width > 600 ? 18 : 15,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          Text(
            place,
            style: GoogleFonts.poppins(
                fontSize: width > 600 ? 15 : 12,
                color: Colors.black87,
                fontWeight: FontWeight.normal),
          ),
        ],
      ),
    );
  }
}

class AllProductBox extends StatelessWidget {
  final String img;
  final String text1;
  final String text2;
  final double? size;

  const AllProductBox(
      {super.key,
      required this.img,
      required this.text1,
      required this.text2,
      this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290,
      width: size ?? 250,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: const Offset(10, 10),
                color: Colors.grey.shade300,
                blurRadius: 20)
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Center(
            child: SizedBox(
              height: 130,
              width: 200,
              child: Image.asset(
                img,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.check,
                      size: 15,
                      color: Colors.deepOrange,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      text1,
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const Icon(
                      size: 15,
                      Icons.check,
                      color: Colors.deepOrange,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      text2,
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Button(onpress: () {}, text: "Learn More", size: 10),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

class Tile extends StatelessWidget {
  final String text;
  final String heading;
  final Icon icon;
  final Color iconcolor;
  final double? size;
  final double? sizedbox;
  final double? beforeheading;
  const Tile(
      {super.key,
      required this.text,
      required this.heading,
      required this.icon,
      required this.iconcolor,
      this.size,
      this.sizedbox,
      this.beforeheading});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: size ?? 200,
      height: 250,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: const Offset(10, 10),
                color: Colors.grey.shade300,
                blurRadius: 20)
          ]),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: iconcolor,
            ),
            child: Center(child: icon),
          ),
          SizedBox(
            height: sizedbox ?? 5,
          ),
          Text(
            heading,
            style: GoogleFonts.poppins(
                fontSize: 15, fontWeight: FontWeight.w700, color: Colors.black),
          ),
          SizedBox(
            height: beforeheading ?? 5,
          ),
          Text(
            text,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.normal,
                color: Colors.black87),
          ),
        ],
      ),
    );
  }
}
