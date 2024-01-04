import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class DetailPage extends StatelessWidget {

  DetailPage({super.key, required this.titleBook ,required this.name, required this.noktp, required this.noperpus, required this.persetujuan});

  String titleBook;
  String name;
  String noktp;
  String noperpus;
  String persetujuan;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFFFF),

        // nonaktifkan button back
        automaticallyImplyLeading: false,

        // Logo
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
            
            const SizedBox(height: 80),

            // Image berhasil booking
            Container(
              width: 250,
              height: 100,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/berhasil_booking.png"),
                  fit: BoxFit.cover, 
                ),
              ),
            ),

            const SizedBox(height: 53),

            Expanded(
              // Text dari data yang telah diinputkan
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft:  Radius.circular(30),
                  topRight: Radius.circular(30),
                ),

                child: ListView(
                  children: [
                    Container(
                      width: 400,
                      height: 470,
                      decoration: const BoxDecoration(
                        color: Color(0xFF454545),
                      ),

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          const SizedBox(height: 30),

                          // Text Buku
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[  

                              Container(
                                padding: const EdgeInsets.only(left : 40, right: 40),
                                child: Text(
                                  'Buku',
                                  style: GoogleFonts.roboto(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xFFFFE6C7)
                                  ),
                                ),
                              ),
                              
                              const SizedBox(height: 10),
                              
                              Container(
                                padding: const EdgeInsets.only(left : 40, right: 40),
                                child: Text(
                                  titleBook,
                                  style: GoogleFonts.roboto(
                                    fontSize: 17,
                                    color: const Color(0xFFFFA559)
                                  ),
                                ),
                              ),
                              
                            ],
                          ),

                          // Text Nama
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[  

                              const SizedBox(height: 15),

                              Container(
                                padding: const EdgeInsets.only(left : 40, right: 40),
                                child: Text(
                                  'Nama',
                                  style: GoogleFonts.roboto(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xFFFFE6C7)
                                  ),
                                ),
                              ),
                              
                              const SizedBox(height: 10),
                              
                              Container(
                                padding: const EdgeInsets.only(left : 40, right: 40),
                                child: Text(
                                  name,
                                  style: GoogleFonts.roboto(
                                    fontSize: 17,
                                    color: const Color(0xFFFFA559)
                                  ),
                                ),
                              ),
                              
                            ],
                          ),

                          // Text KTP
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[  

                              const SizedBox(height: 15),

                              Container(
                                padding: const EdgeInsets.only(left : 40, right: 40),
                                child: Text(
                                  'KTP',
                                  style: GoogleFonts.roboto(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xFFFFE6C7)
                                  ),
                                ),
                              ),
                              
                              const SizedBox(height: 10),
                              
                              Container(
                                padding: const EdgeInsets.only(left : 40, right: 40),
                                child: Text(
                                  noktp,
                                  style: GoogleFonts.roboto(
                                    fontSize: 17,
                                    color: const Color(0xFFFFA559)
                                  ),
                                ),
                              ),
                              
                            ],
                          ),

                          // Text Kartu Perpus
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[  

                              const SizedBox(height: 15),

                              Container(
                                padding: const EdgeInsets.only(left : 40, right: 40),
                                child: Text(
                                  'No. Kartu Perpus',
                                  style: GoogleFonts.roboto(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xFFFFE6C7)
                                  ),
                                ),
                              ),
                              
                              const SizedBox(height: 10),
                              
                              Container(
                                padding: const EdgeInsets.only(left : 40, right: 40),
                                child: Text(
                                  noperpus,
                                  style: GoogleFonts.roboto(
                                    fontSize: 17,
                                    color: const Color(0xFFFFA559)
                                  ),
                                ),
                              ),
                              
                            ],
                          ),

                          // Text Persetujuan
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[  

                              const SizedBox(height: 15),

                              Container(
                                padding: const EdgeInsets.only(left : 40, right: 40),
                                child: Text(
                                  'Persetujuan',
                                  style: GoogleFonts.roboto(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xFFFFE6C7)
                                  ),
                                ),
                              ),
                              
                              const SizedBox(height: 10),
                              
                              Container(
                                padding: const EdgeInsets.only(left : 40, right: 40),
                                child: Text(
                                  persetujuan,
                                  style: GoogleFonts.roboto(
                                    fontSize: 17,
                                    color: const Color(0xFFFFA559)
                                  ),
                                ),
                              ),
                              
                            ],
                          ),

                          const SizedBox(height: 20),

                          // Button Selesai
                          Center(
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushReplacementNamed(context, '/halamanhome');
                              },
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white,

                                backgroundColor: const Color(0xFFFF6000),
                              ),
                              child: const Text(
                                'Selesai',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      
                    ),
                  ],
                ),
              ),

            ),
            
            // Button selesai untuk kembali ke page input

          ],
        )
      ),
    );
  }
}