import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {

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
          children: [        
            Stack(
              children: [

                // Sebagai alas stack
                const Align(
                  alignment: Alignment.topCenter,
                  child: SizedBox(
                    height: 703,
                    width: 400,
                  ),
                ),
                
                // Latar orange
                Positioned(
                  child: Container(
                    height: 240,
                    width: 400,
                    decoration: const BoxDecoration(color: Color(0xFFFF6000)),
                  ),
                ),

                // Latar hitam abu
                Positioned(
                  top: 200.0,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft:  Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                    child: Container(
                      height: 503,
                      width: 400,
                      decoration: const BoxDecoration(color:  Color(0xFF454545)),
                    ),
                  ),
                  
                ),
                
                // Foto profile
                Positioned(
                  top: 90.0,
                  left: 108.0,

                  child: Container(
                    margin: const EdgeInsets.only(top: 20.0),
                    child: ClipRRect(  
                      borderRadius: BorderRadius.circular(100.0),
                      child: Container(
                        width: 180,
                        height: 180,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/profile.PNG"),
                            fit: BoxFit.cover, 
                          ),
                        ),
                      ),
                    ),
                  )
                ),

                // Nama
                Positioned(
                  top: 330.0,

                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topRight:  Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    child: Container(
                      width: 330,
                      height: 50,
                      decoration: const BoxDecoration(
                        color:  Color(0xFFFFE6C7),
                      ),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Text(
                            'Alif Maulana Setyawan',
                            style: GoogleFonts.raleway(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                ),

                // NIM
                Positioned(
                  top: 410.0,

                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topRight:  Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    child: Container(
                      width: 265,
                      height: 50,
                      decoration: const BoxDecoration(
                        color:  Color(0xFFFFE6C7),
                      ),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Text(
                            '2109106002',
                            style: GoogleFonts.roboto(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                ),

                // Kelas
                Positioned(
                  top: 490.0,

                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topRight:  Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    child: Container(
                      width: 307,
                      height: 50,
                      decoration: const BoxDecoration(
                        color:  Color(0xFFFFE6C7),
                      ),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Text(
                            'A2 Informatika 2021',
                            style: GoogleFonts.roboto(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                ),

                // Informasi lainnya
                Positioned(
                  top: 650.0,
                  left: 106.0,

                  child: Text(
                    '- Calon S.Kom -',
                    style: GoogleFonts.roboto(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFFFFE6C7),
                    ),
                  ),
                ),

              ],
            ),

          ],
        ),
      ),
    );
  }
}