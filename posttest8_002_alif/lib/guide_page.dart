import 'package:flutter/material.dart';
import 'package:posttest8_002_alif/model/scheme_data.dart';
import 'package:provider/provider.dart';

class GuidePage extends StatelessWidget {
  const GuidePage({super.key});

  @override
  Widget build(BuildContext context) {
    
    // Mediaquey untuk lebar
    var lebar = MediaQuery.of(context).size.width;

    final schemeData = Provider.of<SchemeData>(context);

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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
    
              // Text panduan booking
              Text(
                'PANDUAN BOOKING',
                style: schemeData.getTheme(context).textTheme.bodyLarge!.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),
    
              const SizedBox(height: 30),
    
              // Langkah 1
              SizedBox(
                width: lebar,
                height: 100,
                child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                    width: lebar,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xFFFF6000),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          
                          const SizedBox(height: 10),
                          
                          const Icon(Icons.looks_one, size: 30, color: Colors.white),
    
                          const SizedBox(height: 5),
                          
                          Text(
                            'User Melakukan Booking Buku',
                            style: schemeData.getTheme(context).textTheme.bodySmall!.copyWith(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    ),
                  ),
                ),
              ),
    
              const SizedBox(height: 30),
    
              // Langkah 2
              SizedBox(
                width: lebar,
                height: 100,
                child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                    width: lebar,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xFFFF6000),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          
                          const SizedBox(height: 10),
                          
                          const Icon(Icons.looks_two, size: 30, color: Colors.white),
    
                          const SizedBox(height: 5),
                          
                          Text(
                            'User Datang Ke Perpustakaan &',
                            style: schemeData.getTheme(context).textTheme.bodySmall!.copyWith(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
    
                          Text(
                            'Menunjukkan Kode Booking',
                            style: schemeData.getTheme(context).textTheme.bodySmall!.copyWith(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    ),
                  ),
                ),
              ),
    
              const SizedBox(height: 30),
    
              // Langkah 3
              SizedBox(
                width: lebar,
                height: 100,
                child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                    width: lebar,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xFFFF6000),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          
                          const SizedBox(height: 10),
                          
                          const Icon(Icons.looks_3, size: 30, color: Colors.white),
    
                          const SizedBox(height: 5),
                          
                          Text(
                            'User Mendapatkan Buku',
                            style: schemeData.getTheme(context).textTheme.bodySmall!.copyWith(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
    
                          Text(
                            'Yang di Booking',
                            style: schemeData.getTheme(context).textTheme.bodySmall!.copyWith(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}