import 'package:alquran_app/globals.dart';
import 'package:alquran_app/screens/coba_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CobaHomeScreen extends StatelessWidget {
  const CobaHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("selamat datang di halaman Home"),
          const SizedBox(
            height: 40,
          ),
          Center(
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const CobaScreen(),
                  ),
                );
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                decoration: BoxDecoration(
                    color: orange, borderRadius: BorderRadius.circular(30)),
                child: Text(
                  'ke halaman Pikachu:)',
                  style: GoogleFonts.poppins(
                      fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
