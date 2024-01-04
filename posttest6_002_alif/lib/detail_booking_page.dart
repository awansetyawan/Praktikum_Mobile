import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

// ignore: must_be_immutable
class DetailPage extends StatefulWidget {

  DetailPage({super.key, required this.titleBook ,required this.name, required this.noktp, required this.noperpus, required this.persetujuan});

  String titleBook;
  String name;
  String noktp;
  String noperpus;
  String persetujuan;
  

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool selected = true;

  final randomCode = generateRandomCode(5);

  @override
  Widget build(BuildContext context) {
    
    // Mediaquery untuk lebar
    var lebar = MediaQuery.of(context).size.width;
    
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
            
            const SizedBox(height: 40),

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

            // Kode Booking
            Text(
              'Kode Booking : $randomCode',
              style: GoogleFonts.roboto(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: const Color(0xFFFF6000)
              ),
            ),

            Text(
              'Harap Screenshoot Kode.',
              style: GoogleFonts.roboto(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF000000)
              ),
            ),

            const SizedBox(height: 33),

            // Animasi container
            AnimatedContainer(
              height: selected ? 363 : 0,
              duration: const Duration(seconds: 1),
              curve: Curves.easeInToLinear,
            ),
            
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
                      width: lebar,
                      height: 512,
                      decoration: const BoxDecoration(
                        color: Color(0xFF454545),
                      ),

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          const SizedBox(height: 10),

                          // Text Buku
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[  
                              
                              // Trigger animasi container
                              GestureDetector(
                                // banyak press yang lain
                                onTap: (){
                                  setState(() {
                                    selected = !selected;
                                  });
                                },

                                child: SizedBox(
                                  width: lebar,
                                  child: const Align(
                                    alignment: Alignment.center,
                                    child: Icon(Icons.arrow_drop_up, size: 55, color: Color(0xFFFF6000),)
                                  ),
                                ),
                              ),                            

                              // const SizedBox(height: 10),

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
                                  widget.titleBook,
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
                                  widget.name,
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
                                  widget.noktp,
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
                                  widget.noperpus,
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
                                  widget.persetujuan,
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

          ],
        )
      ),
    );
  }
}

// Fungsi membuat kode booking random
String generateRandomCode(int length) {
  const characters = '0123456789';
  final random = Random();
  String code = '';

  for (int i = 0; i < length; i++) {
    final index = random.nextInt(characters.length);
    code += characters[index];
  }

  return code;
}