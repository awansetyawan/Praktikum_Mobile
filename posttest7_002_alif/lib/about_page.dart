import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {

    // Mediaquey untuk lebar
    var lebar = MediaQuery.of(context).size.width;

    return Scaffold(

      // Drawer yang diletakkan di sebelah kanan atau ekor
      endDrawer: Drawer(
        backgroundColor : Theme.of(context).drawerTheme.backgroundColor,
        // backgroundColor: const Color(0xFFFFE6C7),
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: const CircleAvatar(
                backgroundImage: AssetImage('assets/profile.PNG'),
              ),
              accountName: Text(
                "Awan - 002",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              accountEmail: Text(
                '@awansetyawan',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontSize: 14,
                ),
              ),
              decoration: const BoxDecoration(color:  Color(0xFFFF6000)),
            ),
            ListTile(
              leading: Icon(Icons.home_outlined, size: 30, color: Theme.of(context).iconTheme.color,),
              title: Text(
                'Home',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/halamanhome');
              },
            ),
            ListTile(
              leading: Icon(Icons.info_outlined, size: 30, color: Theme.of(context).iconTheme.color,),
              title: Text(
                'About',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/halamanabout');
              },
            ),
            ListTile(
              leading: Icon(Icons.lightbulb_outline, size: 30, color: Theme.of(context).iconTheme.color,),
              title: Text(
                'Panduan',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
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

        iconTheme: Theme.of(context).iconTheme, 

        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        title: Image.asset(
          'assets/book_logo.png',
          height: 150,
          width: 200,
        ),

      ),

      body: Center(
        child: ListView(
          children: [        
            Stack(
              children: [

                // Sebagai alas stack
                Align(
                  alignment: Alignment.topCenter,
                  child: SizedBox(
                    height: 703,
                    width: lebar,
                  ),
                ),
                
                // Latar orange
                Positioned(
                  child: Container(
                    height: 240,
                    width: lebar,
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
                      width: lebar,
                      decoration: const BoxDecoration(color:  Color(0xFF454545)),
                    ),
                  ),
                  
                ),
                
                // Foto profile

                Container(
                  width: lebar,
                  margin: const EdgeInsets.only(top: 120.0, left: 65.0, right: 65.0),
                  child: Align(
                    alignment: Alignment.topCenter,
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
                  ),
                  ),

                // Nama
                Positioned(
                  top: 330.0,
                  
                  child : SizedBox(
                    width: lebar,
                    height: 50,
                    child: Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                        width: lebar,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color(0xFFFFE6C7),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Alif Maulana Setyawan',
                            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
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

                ),

                // NIM
                Positioned(
                  top: 410.0,

                  child : SizedBox(
                    width: lebar,
                    height: 50,
                    child: Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                        width: lebar,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color(0xFFFFE6C7),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            '2109106002',
                            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
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

                ),

                // Kelas
                Positioned(
                  top: 490.0,

                  child : SizedBox(
                    width: lebar,
                    height: 50,
                    child: Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                        width: lebar,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color(0xFFFFE6C7),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'A2 Informatika 2021',
                            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
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

                ),

                // Informasi lainnya
                Positioned(
                  top: 590.0,

                  child: SizedBox(
                    width: lebar,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        '- Calon S.Kom -',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFFFFE6C7),
                        ),
                      ),
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