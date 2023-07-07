import 'package:flutter/material.dart';
import 'package:bottom_nav_layout/bottom_nav_layout.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

// contoh penggunaan navigator.push
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Routing'),
        backgroundColor: Colors.green.shade700,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Route route =
                  MaterialPageRoute(builder: (context) => AboutPage());
              Navigator.push(context, route);
            },
            child: Text('klik Untuk ke AboutPage'),
            style: ElevatedButton.styleFrom(
              primary: Colors.green.shade700,
              onPrimary: Colors.white,
              elevation: 5,
              minimumSize: Size(150, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            )),
      ),
    );
  }
}

// contoh penggunaan navigator.pop
class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tentang Aplikasi Saya'),
        backgroundColor: Colors.green.shade700,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Kembali'),
            style: ElevatedButton.styleFrom(
              primary: Colors.green.shade700,
              onPrimary: Colors.white,
              elevation: 5,
              minimumSize: Size(150, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            )),
      ),
    );
  }
}
