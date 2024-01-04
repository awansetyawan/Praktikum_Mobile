import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SchemeData extends ChangeNotifier {
  
  String _selectedScheme = 'Default Orange';
  
  ThemeMode _themeMode = ThemeMode.system;

  String get selectedScheme => _selectedScheme;
  ThemeMode get themeMode => _themeMode;

  bool get isDarkModeActive => _themeMode == ThemeMode.dark;

  ThemeData getTheme(BuildContext context) {

    // Mengambil sistem brightness dari MediaQuery
    final systemBrightness = MediaQuery.platformBrightnessOf(context);
    final isDarkMode = _themeMode == ThemeMode.dark ||
        (_themeMode == ThemeMode.system && systemBrightness == Brightness.dark);

    if (_selectedScheme == 'Default Orange') {
      return isDarkMode ? _defaultDarkOrangeTheme() : _defaultLightOrangeTheme();
    } else if (_selectedScheme == 'Default Dark Orange') {
      return _defaultDarkOrangeTheme();
    } else if (_selectedScheme == 'Dark Warm Orange') {
      return _darkOrangeWarmTheme();
    }else if (_selectedScheme == 'Light Warm Orange') {
      return _lightOrangeWarmTheme();
    }

    return isDarkMode ? _defaultDarkOrangeTheme() : _defaultLightOrangeTheme();
  }

  ThemeData _defaultLightOrangeTheme() {
    return ThemeData.light().copyWith(
      useMaterial3: true,
      brightness: Brightness.light, // Brightness
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
    );
  }

  ThemeData _lightOrangeWarmTheme() {
    return ThemeData.light().copyWith(
      useMaterial3: true,
      brightness: Brightness.light, // Brightness
      scaffoldBackgroundColor: const Color(0xFFFFD8A9), // ScaffoldBackgroundColor
      // TextTheme
      textTheme: GoogleFonts.robotoTextTheme(
        const TextTheme(
          bodyMedium: TextStyle(
            color: Colors.white,
          ),
          headlineMedium: TextStyle(
            color: Color(0xFFD36B00),
          ),
          headlineSmall: TextStyle(
            color: Colors.black,
          ),
        ).merge(
          GoogleFonts.ralewayTextTheme( // Menggunakan Raleway font untuk bagian tertentu
            const TextTheme(
              bodyLarge: TextStyle(
                color: Color(0xFFD36B00),
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
        backgroundColor: Color(0xFFFF9B50), // Warna latar belakang AppBar
      ),
      // ElevatedButtonTheme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFFFF6000)),
        ),
      ),
      // DrawerTheme
      drawerTheme: const DrawerThemeData(
        backgroundColor: Color(0xFFFFD8A9), 
      ),
      // IconTheme
      iconTheme: const IconThemeData(
        color: Color(0xFF4F4A45), // Warna ikon
      ),
    );
  }

  ThemeData _defaultDarkOrangeTheme() {
    return ThemeData.dark().copyWith(
      useMaterial3: true,
      brightness: Brightness.dark,
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
    );
  }

  ThemeData _darkOrangeWarmTheme() {
    return ThemeData.dark().copyWith(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: const Color(0xFFA34A28), // ScaffoldBackgroundColor
      // TextTheme
      textTheme: GoogleFonts.robotoTextTheme(
        const TextTheme(
          bodyMedium: TextStyle(
            color: Colors.white,
          ),
          headlineMedium: TextStyle(
            color: Color(0xFF082032),
          ),
          headlineSmall: TextStyle(
            color: Colors.black,
          ),
        ).merge(
          GoogleFonts.ralewayTextTheme( // Menggunakan Raleway font untuk bagian tertentu
            const TextTheme(
              bodyLarge: TextStyle(
                color: Color(0xFFF0E3CA),
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
        backgroundColor:  Color(0xFF6C5F5B), // Warna latar belakang AppBar
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
        backgroundColor: Color(0xFFB3541E), 
      ),
      // IconTheme
      iconTheme: const IconThemeData(
        color: Color(0xFFFFA559), // Warna ikon
      ),
    );
  }

  void setSelectedScheme(String scheme) {
    _selectedScheme = scheme;
    notifyListeners();
  }

  void setThemeMode(ThemeMode mode) {
    _themeMode = mode;
    notifyListeners();

    if (mode == ThemeMode.dark) {
      if (selectedScheme == 'Dark Warm Orange') {
        setSelectedScheme('Dark Warm Orange');
      } else {
        setSelectedScheme('Default Dark Orange');
      }
    } else {
      if (selectedScheme == 'Light Warm Orange') {
        setSelectedScheme('Light Warm Orange');
      } else {
        setSelectedScheme('Default Orange');
      }
    }
  }
}
