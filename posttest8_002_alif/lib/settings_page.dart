import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:posttest8_002_alif/model/scheme_data.dart';
import 'package:provider/provider.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    Brightness systemBrightness = MediaQuery.platformBrightnessOf(context);

    final schemeData = Provider.of<SchemeData>(context);

    String titleText = schemeData.isDarkModeActive ? "Gelap" : "Terang";

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: schemeData.themeMode,
      theme: schemeData.getTheme(context),
      home: Scaffold(
        
        // Drawer yang diletakkan di sebelah kanan atau ekor
        endDrawer: Drawer(
          backgroundColor : schemeData.getTheme(context).drawerTheme.backgroundColor,
          // backgroundColor: const Color(0xFFFFE6C7),
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: const CircleAvatar(
                  backgroundImage: AssetImage('assets/profile.PNG'),
                ),
                accountName: Text(
                  "Awan - 002",
                  style: schemeData.getTheme(context).textTheme.bodySmall!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                accountEmail: Text(
                  '@awansetyawan',
                  style: schemeData.getTheme(context).textTheme.bodySmall!.copyWith(
                    fontSize: 14,
                  ),
                ),
                decoration: const BoxDecoration(color:  Color(0xFFFF6000)),
              ),
              ListTile(
                leading: Icon(Icons.home_outlined, size: 30, color: schemeData.getTheme(context).iconTheme.color,),
                title: Text(
                  'Home',
                  style: schemeData.getTheme(context).textTheme.headlineMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/halamanhome');
                },
              ),
              ListTile(
                leading: Icon(Icons.info_outlined, size: 30, color: schemeData.getTheme(context).iconTheme.color,),
                title: Text(
                  'About',
                  style: schemeData.getTheme(context).textTheme.headlineMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/halamanabout');
                },
              ),
              ListTile(
                leading: Icon(Icons.lightbulb_outline, size: 30, color: schemeData.getTheme(context).iconTheme.color,),
                title: Text(
                  'Panduan',
                  style: schemeData.getTheme(context).textTheme.headlineMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/halamanguide');
                },
              ),
              ListTile(
                leading: Icon(Icons.history_rounded, size: 30, color: schemeData.getTheme(context).iconTheme.color,),
                title: Text(
                  'Histori',
                  style: schemeData.getTheme(context).textTheme.headlineMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/halamanhistori');
                },
              ),
              ListTile(
                leading: Icon(Icons.settings_brightness_outlined, size: 30, color: schemeData.getTheme(context).iconTheme.color,),
                title: Text(
                  'Appearance',
                  style: schemeData.getTheme(context).textTheme.headlineMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/halamansetting');
                },
              ),
            ],
          ),
        ),
    
        // Logo
        appBar: AppBar(
          // nonaktifkan button back
          automaticallyImplyLeading: false,
    
          iconTheme: schemeData.getTheme(context).iconTheme,
    
          backgroundColor: schemeData.getTheme(context).appBarTheme.backgroundColor,
          title: Image.asset(
            'assets/book_logo.png',
            height: 150,
            width: 200,
          ),
    
        ),
    
        body: Center(
          child: Column(
            children: [  
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Settings",
                    style:schemeData.getTheme(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  )
                ),
              ),
    
              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18.0, bottom: 10.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Tampilan",
                    style: schemeData.getTheme(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 18,
                    ),
                  )
                ),
              ),
    
              ListTile(
                leading: Icon(
                  Provider.of<SchemeData>(context). isDarkModeActive? Icons.dark_mode : Icons.light_mode,
                  color: schemeData.getTheme(context).iconTheme.color,
                ),
                title: Text(
                  titleText,
                  style: schemeData.getTheme(context).textTheme.bodyLarge!.copyWith(
                    fontSize: 16,
                  ),
                ),
                trailing: CupertinoSwitch(
                  activeColor: const Color(0xFFFF6000),
                  value: Provider.of<SchemeData>(context).isDarkModeActive,
                  onChanged: (bool value) {
                    Provider.of<SchemeData>(context, listen: false).setThemeMode(
                      value ? ThemeMode.dark : ThemeMode.light,
                    );
                    // Mengatur dropdown ke 'Default Dark Orange' saat mengganti tema ke gelap
                    if (value) {
                      schemeData.setSelectedScheme('Default Dark Orange');
                    }
                  },
                ),
                onTap: () {
                  Provider.of<SchemeData>(context, listen: false).setThemeMode(
                    systemBrightness == Brightness.dark ? ThemeMode.light : ThemeMode.dark,
                  );
                  // Mengatur dropdown sesuai dengan tema yang dipilih
                  final selectedScheme =
                      systemBrightness == Brightness.dark ? 'Default Orange' : 'Default Dark Orange';
                  schemeData.setSelectedScheme(selectedScheme);
                },
              ),
    
              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18.0, bottom: 5.0, top: 10.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Skema",
                    style: schemeData.getTheme(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 18,
                    ),
                  )
                ),
              ),
    
              ListTile(
                title: Text(
                  'Select Theme',
                  style: schemeData.getTheme(context).textTheme.bodyLarge!.copyWith(
                    fontSize: 15,
                  ),
                ),
                trailing: DropdownButton<String>(
                  value: schemeData.selectedScheme,
                  onChanged: (value) {
                    schemeData.setSelectedScheme(value!);
                    final themeMode = value == 'Default Dark Orange' || value == 'Dark Warm Orange'
                        ? ThemeMode.dark
                        : ThemeMode.light;
                    schemeData.setThemeMode(themeMode);
                  },
                  items: ['Default Orange', 'Default Dark Orange', 'Dark Warm Orange', 'Light Warm Orange'].map((theme) {
                    return DropdownMenuItem<String>(
                      value: theme,
                      child: Text(
                        theme,
                        style: schemeData.getTheme(context).textTheme.bodyLarge!.copyWith(
                          fontSize: 15,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
