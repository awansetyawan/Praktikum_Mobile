import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Menentukan Warna
    Color colorAppbar = const Color(0xFF1363DF);
    Color colorText = const Color(0xFF06283D);
    Color colorBox = const Color(0xFF47B5FF);
    Color colorTask1 = const Color(0xFF0014FF); // Indikator Tugas Sudah Dekat
    Color colorTask2 = const Color(0xFF00E7FF); // Indikator Tugas Masih Aman

    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: colorAppbar,
        title: Text(
          "Todo App",
          style: TextStyle(
            color: colorText,
            fontSize: 30,
          ),
        ),
      ),

      body: Center(
        
        // Bungkus Utama Agar Informasi Tugas, Ringkasan Tugas, Daftar Tugas, dan Button memiliki susunan kolom
        child: Column(
          
          // Data children ada 2 yaitu untuk informasi tugas, ringkasan tugas, dan daftar tugas
          children: [
            
            // Container untuk Informasi Tugas
            Container(
              margin: const EdgeInsets.only(left: 20.0, top: 15.0),
              alignment: Alignment.topLeft,
                child: Text(
                  "Informasi Tugas",
                  style: TextStyle(
                    fontSize: 20,
                    color: colorText,
                  ),
                ),
              ),
            
            // Row untuk ringkasan tugas
            Row(
              
              // Data children ada 3 untuk box ringkasan tugas
              children: [
                
                // Box 1
                Container(
                  width: 105,
                  height: 70,
                  margin: const EdgeInsets.only(left: 20.0),
                  decoration: BoxDecoration(
                    color: colorBox,
                    borderRadius: BorderRadius.circular(10),
                  ),

                  // Bungkus untuk 3 text yang ada dalam box
                  child: Column(
                    
                    children: [
                      
                      // Text 1
                      Container(
                        margin: const EdgeInsets.only(left: 8.0, top: 10.0),
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Total Tugas",
                          style: TextStyle(
                            fontSize: 13,
                            color: colorText,
                          ),
                        ),
                      ),
                      
                      // Bungkus untuk text ke-2 dan ke-3
                      Row(
                        
                        children: [
                          
                          // Text 2
                          Container(
                            margin: const EdgeInsets.only(left: 8.0),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "12",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: colorText,
                              ),
                            ),
                          ),

                          // Text 3
                          Container(
                            margin: const EdgeInsets.only(left: 4.0, top: 5.0),
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "Tugas",
                              style: TextStyle(
                                fontSize: 13,
                                color: colorText,
                              ),
                            ),
                          ),

                        ],

                      ),
                    ],
                    
                  ),
                ),

                // Box 2
                Container(
                  width: 110,
                  height: 70,
                  margin: const EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: colorBox,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  
                  // Bungkus untuk 3 text yang ada dalam box
                  child: Column(
                    
                    children: [
                      
                      // Text 1
                      Container(
                        margin: const EdgeInsets.only(left: 8.0, top: 10.0),
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Tugas Selesai",
                          style: TextStyle(
                            fontSize: 13,
                            color: colorText,
                          ),
                        ),
                      ),

                      // Bungkus untuk text ke-2 dan ke-3
                      Row(
                    
                        children: [
                          
                          // Text 2
                          Container(
                            margin: const EdgeInsets.only(left: 8.0),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "3",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: colorText,
                              ),
                            ),
                          ),

                          // Text 3
                          Container(
                            margin: const EdgeInsets.only(left: 4.0, top: 5.0),
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "Tugas",
                              style: TextStyle(
                                fontSize: 13,
                                color: colorText,
                              ),
                            ),
                          ),

                        ],

                      ),
                    ],
                    
                  ),

                ),

                // Box 3
                Container(
                  width: 105,
                  height: 70,
                  margin:
                  const EdgeInsets.only(right: 15.0),
                  decoration: BoxDecoration(
                    color: colorBox,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  
                  // Bungkus untuk 3 text yang ada dalam box
                  child: Column(
                    
                    children: [
                      
                      // Text 1
                      Container(
                        margin: const EdgeInsets.only(left: 8.0, top: 10.0),
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Tugas Hari Ini",
                          style: TextStyle(
                            fontSize: 13,
                            color: colorText,
                          ),
                        ),
                      ),

                      // Bungkus untuk text ke-2 dan ke-3
                      Row(
                        
                        children: [

                          // Text 2
                          Container(
                            margin: const EdgeInsets.only(left: 8.0),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "2",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: colorText,
                              ),
                            ),
                          ),

                          // Text 3
                          Container(
                            margin: const EdgeInsets.only(left: 4.0, top: 5.0),
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "Tugas",
                              style: TextStyle(
                                fontSize: 13,
                                color: colorText,
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

            // Row untuk daftar tugas 1
            Row(
              
              children: [
                
                Container(
                  width: 50,
                  height: 50,
                  margin: const EdgeInsets.only(left: 20.0, top: 20.0),
                  decoration: BoxDecoration(
                    color: colorTask1,
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),

                Container(
                  width: 300,
                  height: 50,
                  margin: const EdgeInsets.only(left: 15.0, top: 19.0),

                  child: Column(
                    
                    children: [

                      // Text Nama Tugas
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "2109106002",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: colorText,
                          ),
                        ),
                      ),

                      // Text Tanggal Tugas
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "26/09/2023",
                          style: TextStyle(
                            fontSize: 15,
                            color: colorText,
                          ),
                        ),
                      ),
                    ],

                  ),

                ), 

              ],

            ),

            // Row untuk daftar tugas 2
            Row(
              
              children: [
                
                Container(
                  width: 50,
                  height: 50,
                  margin: const EdgeInsets.only(left: 20.0, top: 35.0),
                  decoration: BoxDecoration(
                    color: colorTask2,
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),

                Container(
                  width: 300,
                  height: 50,
                  margin: const EdgeInsets.only(left: 15.0, top: 34.0),

                  child: Column(
                    
                    children: [

                      // Text Nama Tugas
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Alif Maulana Setyawan",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: colorText,
                          ),
                        ),
                      ),

                      // Text Tanggal Tugas
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "26/09/2023",
                          style: TextStyle(
                            fontSize: 15,
                            color: colorText,
                          ),
                        ),
                      ),
                    ],

                  ),

                ),

              ],

            ),

            // Button Tambah
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                width: 110,
                height: 60,
                margin: const EdgeInsets.only(right: 15.0, top: 320.0),
                alignment: Alignment.center,

                decoration: BoxDecoration(
                  color: colorBox,
                  borderRadius: BorderRadius.circular(20),
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    // Text Tambah
                    Text(
                      "Tambah",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: colorText,
                      ),
                    ),

                    // Icon +
                    const Icon(
                      Icons.add,
                      color: Colors.white,
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
