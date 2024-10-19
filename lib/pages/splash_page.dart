import 'dart:async';

import 'package:flutter/material.dart';
import 'package:syn_laundry/pages/login_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  // memanggil fungsi apa yg pertama kali akan dijalankan saat class ini dipanggil
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // panggil function yg akan dijalankan saat class ini dipanggil
    movingPage();

  }

  // fungsi berpindah halaman setelah bbrp detik
  void movingPage(){
    Timer(Duration(seconds: 2), (){
      // panggil fungsi navigator utk pindah halaman
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage() ));
    });
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/Logo.png'),
      ),
    );
  }
}