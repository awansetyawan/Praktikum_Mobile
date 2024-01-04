import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GuidePage extends StatelessWidget {
  const GuidePage({super.key});

  @override
  Widget build(BuildContext context) {
    
    // Mediaquey untuk lebar
    var lebar = MediaQuery.of(context).size.width;

    return Scaffold(

      // Drawer yang diletakkan di sebelah kanan atau ekor
      endDrawer: Drawer(
        backgroundColor: const Color(0xFFFFE6C7),
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/profile.PNG'),
              ),
              accountName: Text(
                "Awan - 002",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              accountEmail: Text('@awansetyawan'),
              decoration: BoxDecoration(color:  Color(0xFFFF6000)),
            ),
            ListTile(
              leading: const Icon(Icons.home_outlined, size: 30,),
              title: Text(
                'Home',
                style: GoogleFonts.raleway(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/halamanhome');
              },
            ),
            ListTile(
              leading: const Icon(Icons.info_outlined, size: 30,),
              title: Text(
                'About',
                style: GoogleFonts.raleway(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/halamanabout');
              },
            ),
            ListTile(
              leading: const Icon(Icons.lightbulb_outline, size: 30,),
              title: Text(
                'Panduan',
                style: GoogleFonts.raleway(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/halamanguide');
              },
            ),
          ],
        ),
      ),

      // Logo
      appBar: AppBar(

        // nonaktifkan button back
        automaticallyImplyLeading: false,

        backgroundColor: const Color(0xFFFFFFFF),
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
              style: GoogleFonts.roboto(
                fontSize: 20,
                fontWeight: FontWeight.w900,
                color: Colors.black,
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
                          style: GoogleFonts.raleway(
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
                          style: GoogleFonts.raleway(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),

                        Text(
                          'Menunjukkan Kode Booking',
                          style: GoogleFonts.raleway(
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
                          style: GoogleFonts.raleway(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),

                        Text(
                          'Yang di Booking',
                          style: GoogleFonts.raleway(
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
    );
  }
}