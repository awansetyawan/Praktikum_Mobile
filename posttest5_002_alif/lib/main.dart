import 'package:flutter/material.dart';
import 'package:posttest5_002_alif/about_page.dart';
import 'package:posttest5_002_alif/detail_booking_page.dart';
import 'package:posttest5_002_alif/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,  

      // Memanggil fungsi didalam input_bookingbook_page,dart

      initialRoute: '/halamanhome',

      routes: {
        '/halamanhome': (context) => const HomePage(),
        '/halamandetail': (context) => DetailPage(name: '', noktp: '', noperpus: '', persetujuan: '', titleBook: '',),
        '/halamanabout': (context) => const AboutPage(),
      },
    );
  }
}
