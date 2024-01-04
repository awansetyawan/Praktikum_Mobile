import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:posttest8_002_alif/IntroductionScreen/introduction_screen.dart';
import 'package:posttest8_002_alif/about_page.dart';
import 'package:posttest8_002_alif/detail_booking_page.dart';
import 'package:posttest8_002_alif/guide_page.dart';
import 'package:posttest8_002_alif/histori_page.dart';
import 'package:posttest8_002_alif/home_page.dart';
import 'package:posttest8_002_alif/model/histori_data.dart';
import 'package:posttest8_002_alif/model/scheme_data.dart';
import 'package:posttest8_002_alif/settings_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ColorScheme lightScheme = ColorScheme.fromSeed(
      seedColor: const Color(0xFFFF6000),
    );
    ColorScheme darkScheme = ColorScheme.fromSeed(
      seedColor: const Color(0xFFFF6000),
      brightness: Brightness.dark,
    );
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HistoriData()),

        ChangeNotifierProvider(create: (context) => SchemeData()),
      ],
      child: Builder(
        builder: (context) {
          return MaterialApp(
            title: 'Flutter Demo',
    
            // Light Theme
            theme: ThemeData(
              useMaterial3: true,
              brightness: Brightness.light, // Brightness
              colorScheme: lightScheme, // Colorscheme
              scaffoldBackgroundColor: Colors.white, // ScaffoldBackgroundColor
              // TextTheme
              textTheme: GoogleFonts.robotoTextTheme(
                const TextTheme(
                  bodyMedium: TextStyle(
                    color: Colors.white,
                  ),
                  headlineMedium: TextStyle(
                    color: Colors.black,
                  ),
                  headlineSmall: TextStyle(
                    color: Colors.black,
                  ),
                ).merge(
                  GoogleFonts.ralewayTextTheme( // Menggunakan Raleway font untuk bagian tertentu
                    const TextTheme(
                      bodyLarge: TextStyle(
                        color: Colors.black,
                      ),
                      bodySmall: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              // AppbarTheme
              appBarTheme: const AppBarTheme(
                backgroundColor: Colors.white, // Warna latar belakang AppBar
              ),
              // SnackBarTheme
              snackBarTheme: const SnackBarThemeData(
                backgroundColor: Color(0xFFFF6000), // Warna latar belakang Snackbar
                contentTextStyle: TextStyle(
                  color: Colors.white, // Warna teks konten Snackbar
                ),
              ),
              // ElevatedButtonTheme
              elevatedButtonTheme: ElevatedButtonThemeData(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFFFF6000)),
                ),
              ),
              // DrawerTheme
              drawerTheme: const DrawerThemeData(
                backgroundColor: Color(0xFFFFE6C7), 
              ),
              // IconTheme
              iconTheme: const IconThemeData(
                color: Colors.black, // Warna ikon
              ),
            ),
    
            // Dark Theme
            darkTheme: ThemeData(
              useMaterial3: true,
              brightness: Brightness.dark,
              colorScheme: darkScheme,
              scaffoldBackgroundColor: Colors.black, // ScaffoldBackgroundColor
              // TextTheme
              textTheme: GoogleFonts.robotoTextTheme(
                const TextTheme(
                  bodyMedium: TextStyle(
                    color: Colors.white,
                  ),
                  headlineMedium: TextStyle(
                    color: Colors.white,
                  ),
                  headlineSmall: TextStyle(
                    color: Colors.black,
                  ),
                ).merge(
                  GoogleFonts.ralewayTextTheme( // Menggunakan Raleway font untuk bagian tertentu
                    const TextTheme(
                      bodyLarge: TextStyle(
                        color: Colors.white,
                      ),
                      bodySmall: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              // AppbarTheme
              appBarTheme: const AppBarTheme(
                backgroundColor:  Color(0xFF454545), // Warna latar belakang AppBar
              ),
              // SnackBarTheme
              snackBarTheme: const SnackBarThemeData(
                backgroundColor: Color(0xFFFF6000), // Warna latar belakang Snackbar
                contentTextStyle: TextStyle(
                  color: Colors.black, // Warna teks konten Snackbar
                ),
              ),
              // ElevatedButtonTheme
              elevatedButtonTheme: ElevatedButtonThemeData(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFFFF6000)),
                ),
              ),
              // DrawerTheme
              drawerTheme: const DrawerThemeData(
                backgroundColor: Color(0xFF454545), 
              ),
              // IconTheme
              iconTheme: const IconThemeData(
                color: Colors.white, // Warna ikon
              ),
            ),

            themeMode: Provider.of<SchemeData>(context).themeMode,

            debugShowCheckedModeBanner: false,
    
            initialRoute: '/introductionscreen',
            
            routes: {
              '/introductionscreen':(context) => const OnboardingScreen(),
              '/halamanhome': (context) => const HomePage(),
              '/halamandetail': (context) => DetailPage(name: '', noktp: '', noperpus: '', persetujuan: '', titleBook: ''),
              '/halamanabout': (context) => const AboutPage(),
              '/halamanguide': (context) => const GuidePage(),
              '/halamanhistori': (context) => const HistoriPage(),
              '/halamansetting': (context) => const Settings(),
            }
    
          );
        }
      ),
    );
  }
}