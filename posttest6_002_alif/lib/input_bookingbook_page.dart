import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:posttest6_002_alif/detail_booking_page.dart';
import 'package:flutter/cupertino.dart';

class InputBookingPage extends StatefulWidget {
  final String imagePath;
  final String titleBook;

  const InputBookingPage({super.key, required this.imagePath, required this.titleBook});

  @override
  State<InputBookingPage> createState() => _InputBookingPagePageState();
}

class _InputBookingPagePageState extends State<InputBookingPage> {

  final _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ktpController = TextEditingController();
  final TextEditingController _kartuperpusController = TextEditingController();
  
  bool? checkPersetujuanDenda = false;

  String _hasilcheck = '';

  @override
  Widget build(BuildContext context) {
    
    // Mediaquery untuk lebar
    var lebar = MediaQuery.of(context).size.width;

    return Scaffold(
      
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
  
      body: Form( // Menggunakan form agar memiliki key unik sebagai pemeriksa page input
        key: _formKey, // key unik
        child: Column(
          children: <Widget> [

            Container(
              color: const Color(0xFFFFFFFF),
              child: SizedBox(
                width: 400,
                height: 290,
                child: Stack(
                  children: [
            
                    Positioned(
                      child: Column(
                        children: <Widget>[
            
                        const SizedBox(height: 15),

                        // Contoh Image cover buku
                        Align(
                          alignment: Alignment.center,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16.0),
                            child: Container(
                              width: 130,
                              height: 210,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(widget.imagePath),
                                  fit: BoxFit.cover, 
                                ),
                              ),
                            ),
                          ),
                        ),
            
                        const SizedBox(height: 15),

                        // Judul Buku
                        Text(
                          widget.titleBook,
                          style: GoogleFonts.raleway(
                            fontSize: 15  ,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        // Status Buku
                        Text(
                          'Tersedia',
                          style: GoogleFonts.raleway(
                            fontSize: 14,
                            color: const Color(0xFFFF6000),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        ]
                      )
                    ),
            
                  ],
                ),
              ),
            ),

            Expanded(
              child:  ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft:  Radius.circular(30),
                  topRight: Radius.circular(30),
                ),

                child: ListView(
                  children:[
                    Container(
                      width: lebar,
                      height: 450,
                      decoration: const BoxDecoration(
                        color: Color(0xFF454545),
                      ),
       
                      child: Column(
                        children: <Widget>[

                          const SizedBox(height: 40),
                          
                          // Textfield nama
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0),
                            child: TextFormField(
                              controller: _nameController,
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: const Color(0xFFFFE6C7), 

                                border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0)),

                                hintText: "Nama",

                                hintStyle: TextStyle(
                                  color: Colors.black.withOpacity(0.3),
                                ),

                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Color(0xFFFF6000)),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                errorStyle: const TextStyle(
                                  color: Color(0xFFFF6000),
                                ),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Nama tidak boleh kosong';
                                }
                                return null;
                              },
                            ),
                          ),
                          
                          const SizedBox(height: 20),
                          
                          // Textfield Nomor KTP
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0),
                            child: TextFormField(
                              controller: _ktpController,
                              keyboardType: TextInputType.number,
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: const Color(0xFFFFE6C7), 

                                border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0)),

                                hintText: "Nomor KTP",

                                hintStyle: TextStyle(
                                  color: Colors.black.withOpacity(0.3),
                                ),

                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Color(0xFFFF6000)),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                errorStyle: const TextStyle(
                                  color: Color(0xFFFF6000),
                                ),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Nomor KTP tidak boleh kosong';
                                }
                                return null;
                              },
                            ),
                          ),

                          const SizedBox(height: 20),

                          // Textfield Nomor Kartu Perpus
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0),
                            child: TextFormField(
                              controller: _kartuperpusController,
                              keyboardType: TextInputType.number,
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: const Color(0xFFFFE6C7), 

                                border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0)),

                                hintText: "Nomor Kartu Perpus",

                                hintStyle: TextStyle(
                                  color: Colors.black.withOpacity(0.3),
                                ),

                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Color(0xFFFF6000)),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                errorStyle: const TextStyle(
                                  color: Color(0xFFFF6000),
                                ),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Nomor Kartu Perpustakaan tidak boleh kosong';
                                }
                                return null;
                              },
                            ),
                          ),

                          // Checkbox Persetujuan
                          ListTile(
                            leading: Checkbox(
                              shape: const CircleBorder(),
                              value: checkPersetujuanDenda,
                              onChanged: (bool? value) {
                                setState(() {
                                checkPersetujuanDenda = value;

                                // Kondisi untuk mengisi nilai
                                if(checkPersetujuanDenda == true){
                                  _hasilcheck = "Menyetujui";
                                }else{
                                  _hasilcheck = "Tidak Menyetujui";
                                }

                              });
                              },
                              activeColor: const Color(0xFFFF6000),
                              side: const BorderSide(
                                color: Color(0xFFFFA559),
                              ),
                            ),
                            title: const Text(
                              'Saya Menyetujui Persyaratan Perpustakaan',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                              ),
                            ),
                          ),   

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              // Button Cancel
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pushReplacementNamed(context, '/halamanhome');
                                },
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: Colors.white,

                                  backgroundColor: const Color(0xFFFF6000),
                                ),
                                child: const Text(
                                  ' Cancel ',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ),

                              SizedBox(width: lebar * 0.12),

                              // Button Booking
                              ElevatedButton(
                                onPressed: () {

                                  // Kondisi mengecek persetujuan dan textfield tidak ada yang kosong
                                  if(checkPersetujuanDenda! == false){
                                    showCupertinoModalPopup<void>(
                                      context: context,
                                      builder: (BuildContext context) => CupertinoAlertDialog(
                                        title: const Text('Alert'),
                                        content: const Text('You must agree to the terms to continue.'),
                                        actions: <CupertinoDialogAction>[
                                          CupertinoDialogAction(
                                            isDestructiveAction: true,
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: const Text('Yes'),
                                          ),
                                        ],
                                      ),
                                    );

                                  }else if (_formKey.currentState!.validate()) {
                                    Navigator.push(
                                      context, 
                                      MaterialPageRoute(
                                        builder: (_) => DetailPage(name: _nameController.text, noktp: _ktpController.text, noperpus: _kartuperpusController.text, persetujuan: _hasilcheck, titleBook: widget.titleBook)
                                      )
                                    );
                                  }

                                },
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: Colors.white,

                                  backgroundColor: const Color(0xFFFF6000),
                                ),
                                child: const Text(
                                  'Booking',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ), 

                            ],
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      
    );
  }
}