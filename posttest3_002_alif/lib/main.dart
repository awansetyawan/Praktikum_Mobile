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
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {

  // Untuk penggunaan hari ini adalah tanggal 01/10/2023 dengan prioritas 1 paling tinggi dan 4 paling rendah
  List<Task> myTask = [
    Task(nama: "2109106002", tanggal: "01/10/2023 ", prioritas: 1, status: false),
    Task(nama: "Alif Maulana Setyawan", tanggal: "02/10/2023", prioritas: 2, status: true),
    Task(nama: "Tugas 1", tanggal: "03/10/2023", prioritas: 3, status: false),
    Task(nama: "Tugas 2", tanggal: "04/10/2023", prioritas: 4, status: true),
    Task(nama: "Tugas 3", tanggal: "01/10/2023", prioritas: 1, status: true),
    Task(nama: "Tugas 4", tanggal: "01/10/2023", prioritas: 1, status: false),
    Task(nama: "Tugas 5", tanggal: "02/10/2023", prioritas: 2, status: false),
    Task(nama: "Tugas 6", tanggal: "03/10/2023", prioritas: 3, status: true),
    Task(nama: "Tugas 7", tanggal: "04/10/2023", prioritas: 4, status: false),
    Task(nama: "Tugas 8", tanggal: "04/10/2023", prioritas: 4, status: false),
    Task(nama: "Tugas 9", tanggal: "02/10/2023", prioritas: 2, status: true),
    Task(nama: "Tugas 10", tanggal: "03/10/2023", prioritas: 3, status: false),
  ];

  MyHomePage({super.key});

   @override
  Widget build(BuildContext context) {
    
    // Menentukan Warna
    Color colorAppbar = const Color(0xFF1363DF);
    Color colorText = const Color(0xFF06283D);

    return Scaffold(
      
      // Appbar
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

      // Body diatur dengan layout kolom
      body: Column( 
        children: [

          // Untuk menambahkan jarak antar box
          SizedBox(
            width: 400,
            height: 150,
            child: Stack(
              children: [
                
                // Mengatur posisi judul widget dalam stack
                const Positioned(
                  top: 20,
                  left: 18,
                  child: Text(
                    'Informasi Tugas',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
                
                // Mengatur posisi ringkasan total tugas
                Positioned(
                  top: 60,
                  left: 40,

                  // Container border
                  child: Container(
                    width: 108,
                    height: 74,
                    decoration: BoxDecoration(
                      color:  Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),

                    child: Center(
                      child: Container(
                          width: 105,
                          height: 70,
                          decoration: BoxDecoration(
                            color: const Color(0xFF47B5FF),
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
                    ),

                  ),
                ),
                
                // Mengatur posisi ringkasan tugas selesai 
                Positioned(
                  top: 60,
                  left: 140,

                  // Container border
                  child: Container(
                    width: 108,
                    height: 74,
                    decoration: BoxDecoration(
                      color:  Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),

                    child: Center(
                      child: Container(
                          width: 105,
                          height: 70,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage("assets/background.jpg"),
                              fit: BoxFit.cover,
                            ),
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
                                      "5",
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
                    ),

                  ),
                ),

                // Mengatur posisi ringkasan tugas hari ini 
                Positioned(
                  top: 60,
                  left: 240,

                  // Container border
                  child: Container(
                    width: 108,
                    height: 74,
                    decoration: BoxDecoration(
                      color:  Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),

                    child: Center(
                      child: Container(
                          width: 105,
                          height: 70,
                          decoration: BoxDecoration(
                            color: const Color(0xFF47B5FF),
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
                    ),

                  ),
                ),

              ],

            ),

          ),

          // Mengisi ruang yang tersedia
          Expanded(

            // Daftar tugas yang dapat discroll
            child: ListView.builder(
              itemBuilder: (_, i){
                return TodoTask(task: myTask[i]);
              },
              itemCount: myTask.length,
            ),
            
          ),
        ],
      ),
      
      // Button tambah
      floatingActionButton: FloatingActionButton.extended(onPressed: (){}, 
        
        // Text tambah
        label: const Text(
          "Tambah",
          style: TextStyle(
            fontSize: 18, 
            fontWeight: FontWeight.bold,
            color:Color(0xFF06283D),
          ),
        ),

        // Icon tambah
        icon: const Icon(
          Icons.add,
          color: Colors.white,
        ),

        backgroundColor: const Color(0xFF47B5FF), 
      ),
    );
  }
}

class TodoTask extends StatelessWidget {
  Task task;
  
  TodoTask({
    super.key,
    required this.task,
  });

  @override
  Widget build(BuildContext context){
    // Pemilihan warna sesuai prioritas
    Color statusColor;

    switch(task.prioritas){
      case 1:
        statusColor = const Color(0xFF6499E9);
        break;
      case 2:
        statusColor = const Color(0xFF9EDDFF);
        break;
      case 3:
        statusColor = const Color(0xFFAEE2FF);
        break;
      case 4:
        statusColor = const Color(0xFFE4F1FF);
        break;
      default:
        statusColor = Colors.white;
    }

    return ListTile(
      
      // Nama tugas
      title: Text(
        task.nama,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),

      // Tanggal tugas
      subtitle: Text(task.tanggal),

      // Prioritas tugas
      leading: Container(
        width: 50,
        height: 50,
        margin: const EdgeInsets.only(left: 10.0),
        decoration: BoxDecoration(
          color: statusColor,
          borderRadius: BorderRadius.circular(30)
        ),
        alignment: Alignment.center,
        child: Text(
          task.prioritas.toString()
        ),
      ),

      trailing: Padding(
        padding: const EdgeInsets.only(right: 10), // Sesuaikan dengan jumlah padding yang Anda inginkan
          child: Visibility(
          visible: task.status, // Tampilkan ikon centang jika task.status bernilai true
            child: const Icon(
              Icons.check_circle,
              color: Color(0xFF47B5FF),
            ),
          ),
        ),
    );
  }
}

// Kelas task
class Task{
  String nama = "";
  String tanggal = "";
  int prioritas = 0;
  bool status = false;

  Task({required this.nama, required this.tanggal, required this.prioritas, required this.status});
}