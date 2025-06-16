import 'package:buscador_gif/ui/home_page.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_gif/flutter_gif.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double larguraTela = MediaQuery.of(context).size.width;
    double alturaTela = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Bem-vindo ao buscador de GIF's",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              height: MediaQuery.of(context).size.width * 0.8,
              child: Image.network(
                'https://i.gifer.com/XOsX.gif',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: alturaTela * 0.05),
            Text(
              'Pesquise, clique no GIF que você escolher e compartilhe!',
              style: TextStyle(fontSize: larguraTela * 0.03),
            ),
            SizedBox(height: alturaTela * 0.1),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: larguraTela * 0.06,
                  vertical: alturaTela * 0.015,
                ),
                backgroundColor: Colors.blueAccent,
                foregroundColor: Colors.white,
                textStyle: TextStyle(fontSize: larguraTela * 0.04),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Text('Clique aqui para buscar GIF'),
            ),
          ],
        ),
      ),
    );
  }
}
