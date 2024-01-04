import 'package:flutter/material.dart';
import 'package:posttest4_002_alif/input_bookingbook_page.dart';

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
      home: const InputBookingPage(),
    );
  }
}
