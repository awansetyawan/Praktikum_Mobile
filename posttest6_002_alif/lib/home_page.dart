import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:posttest6_002_alif/input_bookingbook_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
  
}

class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    
    // Mediaquey untuk lebar dan tinggi
    var lebarBackground = MediaQuery.of(context).size.width * 0.45;
    var tinggiBackground = MediaQuery.of(context).size.height * 0.15 + lebarBackground;

    var lebarCover = MediaQuery.of(context).size.width * 0.3;
    var tinggiCover= MediaQuery.of(context).size.height * 0.08 + (lebarCover * 1.2);

    var lebarJarak = MediaQuery.of(context).size.height * 0.03;

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
                                  foregroundColor: Colors.white,

                                  backgroundColor: const Color(0xFFFF6000),
                                  
                                  minimumSize: Size(
                                    MediaQuery.of(context).size.width * 0.31, // Mengatur lebar button
                                    MediaQuery.of(context).size.height * 0.06, // Mengatur tinggi button
                                  ),
                                ),
                                child: const Text(
                                  '   Check   ',
                                  style: TextStyle(
                                    fontSize: 13,
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
                                  foregroundColor: Colors.white,

                                  backgroundColor: const Color(0xFFFF6000),
                                  minimumSize: Size(
                                    MediaQuery.of(context).size.width * 0.31, // Mengatur lebar button
                                    MediaQuery.of(context).size.height * 0.06, // Mengatur tinggi button
                                  ),
                                ),
                                child: const Text(
                                  '   Check   ',
                                  style: TextStyle(
                                    fontSize: 13,
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
                                  foregroundColor: Colors.white,

                                  backgroundColor: const Color(0xFFFF6000),
                                  minimumSize: Size(
                                    MediaQuery.of(context).size.width * 0.31, // Mengatur lebar button
                                    MediaQuery.of(context).size.height * 0.06, // Mengatur tinggi button
                                  ),
                                ),
                                child: const Text(
                                  '   Check   ',
                                  style: TextStyle(
                                    fontSize: 13,
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
                                  foregroundColor: Colors.white,

                                  backgroundColor: const Color(0xFFFF6000),
                                  minimumSize: Size(
                                    MediaQuery.of(context).size.width * 0.31, // Mengatur lebar button
                                    MediaQuery.of(context).size.height * 0.06, // Mengatur tinggi button
                                  ),
                                ),
                                child: const Text(
                                  '   Check   ',
                                  style: TextStyle(
                                    fontSize: 13,
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
                                  foregroundColor: Colors.white,

                                  backgroundColor: const Color(0xFFFF6000),
                                  minimumSize: Size(
                                    MediaQuery.of(context).size.width * 0.31, // Mengatur lebar button
                                    MediaQuery.of(context).size.height * 0.06, // Mengatur tinggi button
                                  ),
                                ),
                                child: const Text(
                                  '   Check   ',
                                  style: TextStyle(
                                    fontSize: 13,
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
                                  foregroundColor: Colors.white,

                                  backgroundColor: const Color(0xFFFF6000),
                                  minimumSize: Size(
                                    MediaQuery.of(context).size.width * 0.31, // Mengatur lebar button
                                    MediaQuery.of(context).size.height * 0.06, // Mengatur tinggi button
                                  ),
                                ),
                                child: const Text(
                                  '   Check   ',
                                  style: TextStyle(
                                    fontSize: 13,
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

    );
  }

}