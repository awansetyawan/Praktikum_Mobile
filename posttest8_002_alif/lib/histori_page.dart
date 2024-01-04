import 'package:flutter/material.dart';
import 'package:posttest8_002_alif/model/histori_data.dart';
import 'package:posttest8_002_alif/model/scheme_data.dart';
import 'package:posttest8_002_alif/widgets/histori_list.dart';
import 'package:provider/provider.dart';

class HistoriPage extends StatelessWidget {
  const HistoriPage({super.key});

  @override
  Widget build(BuildContext context) {
    
    final schemeData = Provider.of<SchemeData>(context);
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: schemeData.themeMode,
      theme: schemeData.getTheme(context),
      home: Scaffold(
        backgroundColor: const Color(0xFFFF6000),
        
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
    
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(
                  top: 40.0, left: 30.0, right: 30.0, bottom: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text(
                    'Histori',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    '${Provider.of<HistoriData>(context).historiCount} Histori',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(20.0),
                decoration: const BoxDecoration(
                  color: Color(0xFF454545),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: const HistoriList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}