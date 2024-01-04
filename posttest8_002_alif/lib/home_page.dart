import 'package:flutter/material.dart';
import 'package:posttest8_002_alif/input_bookingbook_page.dart';
import 'package:posttest8_002_alif/model/scheme_data.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    
    // Mediaquey untuk lebar dan tinggi
    var lebarBackground = MediaQuery.of(context).size.width * 0.45;
    var tinggiBackground = MediaQuery.of(context).size.height * 0.15 + lebarBackground;

    var lebarCover = MediaQuery.of(context).size.width * 0.3;
    var tinggiCover= MediaQuery.of(context).size.height * 0.08 + (lebarCover * 1.2);

    var lebarJarak = MediaQuery.of(context).size.height * 0.03;

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
    
        // Daftar Buku Yang Tersedia
        body: ListView(
          children: [
            Center(
              child: Column(
                children: [
    
                  const SizedBox(height: 40),
                  
                  // Baris Pertama
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
    
                    children: [
    
                      Container(
                        width: lebarBackground,
                        height: tinggiBackground,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: const Color(0xFF454545),
                        ),
    
                        child: Stack(
                          children: [
    
                            Align(
                              alignment: Alignment.topCenter,
                              child: 
                                Container(
                                  margin: const EdgeInsets.only(top: 20.0),
                                  child: ClipRRect(  
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Container(
                                      width: lebarCover,
                                      height: tinggiCover,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage("assets/CoverBuku/cover1.jpg"),
                                          fit: BoxFit.cover, 
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                            ),
    
                            Align(
                              alignment: Alignment.bottomCenter,
                              child : Container(
                                margin:  EdgeInsets.only(bottom: (7.0 + lebarJarak * 0.2)),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                        builder: (context) => const InputBookingPage(imagePath: 'assets/CoverBuku/cover1.jpg', titleBook: 'Implementasi Algoritma Python',),
                                      ),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFFFF6000),
                                    
                                    minimumSize: Size(
                                      MediaQuery.of(context).size.width * 0.31, // Mengatur lebar button
                                      MediaQuery.of(context).size.height * 0.06, // Mengatur tinggi button
                                    ),
                                  ),
                                  child: Text(
                                    '   Check   ',
                                    style: schemeData.getTheme(context).textTheme.bodySmall!.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),  
                          ],
                        ),
                        
                      ),
                      
                      SizedBox(width: lebarJarak),
    
                      Container(
                        width: lebarBackground,
                        height: tinggiBackground,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: const Color(0xFF454545),
                        ),
    
                        child: Stack(
                          children: [
    
                            Align(
                              alignment: Alignment.topCenter,
                              child: 
                                Container(
                                  margin: const EdgeInsets.only(top: 20.0),
                                  child: ClipRRect(  
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Container(
                                      width: lebarCover,
                                      height: tinggiCover,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage("assets/CoverBuku/cover2.jpg"),
                                          fit: BoxFit.cover, 
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                            ),
    
                            Align(
                              alignment: Alignment.bottomCenter,
                              child : Container(
                                margin:  EdgeInsets.only(bottom: (7.0 + lebarJarak * 0.2)),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                        builder: (context) => const InputBookingPage(imagePath: 'assets/CoverBuku/cover2.jpg', titleBook: 'Dasar Kriptografi',),
                                      ),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFFFF6000),
                                    minimumSize: Size(
                                      MediaQuery.of(context).size.width * 0.31, // Mengatur lebar button
                                      MediaQuery.of(context).size.height * 0.06, // Mengatur tinggi button
                                    ),
                                  ),
                                  child: Text(
                                    '   Check   ',
                                  style: schemeData.getTheme(context).textTheme.bodySmall!.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),  
                          ],
                        ),
                        
                      ),
    
                    ],
                  ),
    
                  SizedBox(height: lebarJarak),
    
                  // Baris kedua
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
    
                    children: [
    
                      Container(
                        width: lebarBackground,
                        height: tinggiBackground,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: const Color(0xFF454545),
                        ),
    
                        child: Stack(
                          children: [
    
                            Align(
                              alignment: Alignment.topCenter,
                              child: 
                                Container(
                                  margin: const EdgeInsets.only(top: 20.0),
                                  child: ClipRRect(  
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Container(
                                      width: lebarCover,
                                      height: tinggiCover,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage("assets/CoverBuku/cover3.jpg"),
                                          fit: BoxFit.cover, 
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                            ),
    
                            Align(
                              alignment: Alignment.bottomCenter,
                              child : Container(
                                margin:  EdgeInsets.only(bottom: (7.0 + lebarJarak * 0.2)),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                        builder: (context) => const InputBookingPage(imagePath: 'assets/CoverBuku/cover3.jpg', titleBook: 'Mengenal PBO',),
                                      ),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFFFF6000),
                                    minimumSize: Size(
                                      MediaQuery.of(context).size.width * 0.31, // Mengatur lebar button
                                      MediaQuery.of(context).size.height * 0.06, // Mengatur tinggi button
                                    ),
                                  ),
                                  child: Text(
                                    '   Check   ',
                                    style: schemeData.getTheme(context).textTheme.bodySmall!.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),  
                          ],
                        ),
                        
                      ),
                      
                      SizedBox(width: lebarJarak),
    
                      Container(
                        width: lebarBackground,
                        height: tinggiBackground,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: const Color(0xFF454545),
                        ),
    
                        child: Stack(
                          children: [
    
                            Align(
                              alignment: Alignment.topCenter,
                              child: 
                                Container(
                                  margin: const EdgeInsets.only(top: 20.0),
                                  child: ClipRRect(  
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Container(
                                      width: lebarCover,
                                      height: tinggiCover,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage("assets/CoverBuku/cover4.jpg"),
                                          fit: BoxFit.cover, 
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                            ),
    
                            Align(
                              alignment: Alignment.bottomCenter,
                              child : Container(
                                margin:  EdgeInsets.only(bottom: (7.0 + lebarJarak * 0.2)),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                        builder: (context) => const InputBookingPage(imagePath: 'assets/CoverBuku/cover4.jpg', titleBook: 'Network Security dan Cyber Security',),
                                      ),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFFFF6000),
                                    minimumSize: Size(
                                      MediaQuery.of(context).size.width * 0.31, // Mengatur lebar button
                                      MediaQuery.of(context).size.height * 0.06, // Mengatur tinggi button
                                    ),
                                  ),
                                  child: Text(
                                    '   Check   ',
                                    style: schemeData.getTheme(context).textTheme.bodySmall!.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),  
                          ],
                        ),
                        
                      ),
    
                    ],
                  ),
    
                  SizedBox(height: lebarJarak),
    
                  // Baris ketiga
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
    
                    children: [
    
                      Container(
                        width: lebarBackground,
                        height: tinggiBackground,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: const Color(0xFF454545),
                        ),
    
                        child: Stack(
                          children: [
    
                            Align(
                              alignment: Alignment.topCenter,
                              child: 
                                Container(
                                  margin: const EdgeInsets.only(top: 20.0),
                                  child: ClipRRect(  
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Container(
                                      width: lebarCover,
                                      height: tinggiCover,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage("assets/CoverBuku/cover5.jpg"),
                                          fit: BoxFit.cover, 
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                            ),
    
                            Align(
                              alignment: Alignment.bottomCenter,
                              child : Container(
                                margin:  EdgeInsets.only(bottom: (7.0 + lebarJarak * 0.2)),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                        builder: (context) => const InputBookingPage(imagePath: 'assets/CoverBuku/cover5.jpg', titleBook: 'Flutter',),
                                      ),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFFFF6000),
                                    minimumSize: Size(
                                      MediaQuery.of(context).size.width * 0.31, // Mengatur lebar button
                                      MediaQuery.of(context).size.height * 0.06, // Mengatur tinggi button
                                    ),
                                  ),
                                  child: Text(
                                    '   Check   ',
                                    style: schemeData.getTheme(context).textTheme.bodySmall!.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),  
                          ],
                        ),
                        
                      ),
                      
                      SizedBox(width: lebarJarak),
    
                      Container(
                        width: lebarBackground,
                        height: tinggiBackground,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: const Color(0xFF454545),
                        ),
    
                        child: Stack(
                          children: [
    
                            Align(
                              alignment: Alignment.topCenter,
                              child: 
                                Container(
                                  margin: const EdgeInsets.only(top: 20.0),
                                  child: ClipRRect(  
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Container(
                                      width: lebarCover,
                                      height: tinggiCover,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage("assets/CoverBuku/cover6.jpg"),
                                          fit: BoxFit.cover, 
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                            ),
    
                            Align(
                              alignment: Alignment.bottomCenter,
                              child : Container(
                                margin:  EdgeInsets.only(bottom: (7.0 + lebarJarak * 0.2)),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                        builder: (context) => const InputBookingPage(imagePath: 'assets/CoverBuku/cover6.jpg', titleBook: 'Data Mining',),
                                      ),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFFFF6000),
                                    minimumSize: Size(
                                      MediaQuery.of(context).size.width * 0.31, // Mengatur lebar button
                                      MediaQuery.of(context).size.height * 0.06, // Mengatur tinggi button
                                    ),
                                  ),
                                  child: Text(
                                    '   Check   ',
                                    style: schemeData.getTheme(context).textTheme.bodySmall!.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),  
                          ],
                        ),
                        
                      ),
    
                    ],
                  ),
    
                  const SizedBox(height: 40),
    
                ],
              ),
            ),
          ],
        ),
    
      ),
    );
  }
}