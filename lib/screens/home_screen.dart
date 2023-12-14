import 'package:alquran_app/globals.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      bottomNavigationBar: _bottomNavigationBar(),
      backgroundColor: background,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Assalamualaikum',
            style: GoogleFonts.poppins(
                fontSize: 18, fontWeight: FontWeight.w500, color: text),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            'Ilham Fakih HIlmi',
            style: GoogleFonts.poppins(
                fontSize: 24, fontWeight: FontWeight.w600, color: Colors.white),
          ),
          const SizedBox(
            height: 24,
          ),
          Stack(
            children: [
              Container(
                height: 131,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0, .6, 1],
                      colors: [
                        Color(0xFFDF98FA),
                        Color(0xFFB070FD),
                        Color(0xFF9055FF)
                      ],
                    )),
              )
            ],
          )
        ]),
      ),
    );
  }

  AppBar _appBar() => AppBar(
        backgroundColor: background,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(children: [
          IconButton(
              onPressed: (() => {}),
              icon: SvgPicture.asset('assets/svgs/menu-icon.svg')),
          SizedBox(
            width: 24,
          ),
          Text(
            "Quran App",
            style: GoogleFonts.poppins(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const Spacer(),
          IconButton(
              onPressed: (() => {}),
              icon: SvgPicture.asset('assets/svgs/search-icon.svg')),
        ]),
      );

  BottomNavigationBar _bottomNavigationBar() => BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: gray,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          _bottomBarItem(icon: "assets/svgs/quran-icon.svg", label: "Quran"),
          _bottomBarItem(icon: "assets/svgs/lampu-icon.svg", label: "Tips"),
          _bottomBarItem(icon: "assets/svgs/pray-icon.svg", label: "Prayer"),
          _bottomBarItem(icon: "assets/svgs/doa-icon.svg", label: "Doa"),
          _bottomBarItem(
              icon: "assets/svgs/bookmark-icon.svg", label: "Bookmark"),
        ],
      );

  BottomNavigationBarItem _bottomBarItem(
          {required String icon, required String label}) =>
      BottomNavigationBarItem(icon: SvgPicture.asset(icon), label: label);
}
