import 'package:alquran_app/globals.dart';
import 'package:alquran_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CobaScreen extends StatelessWidget {
  const CobaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Center(
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                border: Border.all(width: 2),
                image: const DecorationImage(
                    image: NetworkImage(
                      'https://i.pinimg.com/736x/96/69/72/966972471970ab014cdb7cb1529118dd.jpg',
                    ),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          SafeArea(
            child: Text("hallo... aku pikachu...."),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const SplashScreen(),
                ),
              );
            },
            child: Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                    color: orange, borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Text(
                    "kembali ke Splash",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                )),
          )
        ]),
      ),
    ));
  }
}
