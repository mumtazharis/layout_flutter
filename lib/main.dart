import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  
  Widget build(BuildContext context) {
    
    Widget titleSection = Container(
      
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            /* soal 1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /* soal 2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(color: Colors.grey),
                ),
                
              ],
            ),
          ),
          /* soal 3*/
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );
    Widget gambarkecilSection = Padding(
      padding: const EdgeInsets.symmetric(vertical: 1), // Beri sedikit jarak vertikal dengan gambar besar
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center, 
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2.0), 
            child: Image.asset(
              'images/wisatabatu.png',
              width: 110,
              height: 110,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2.0), 
            child: Image.asset(
              'images/wisatabatu0.png',
              width: 110,
              height: 110,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2.0),
            child: Image.asset(
              'images/wisatabatu1.png',
              width: 110,
              height: 110,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2.0),
            child: Image.asset(
              'images/wisatabatu2.png',
              width: 110,
              height: 110,
            ),
          ),
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Ahmad Mumtaz Haris 2241720136\n'
        'Batu Secret Zoo merupakan tempat wisata dan kebun binatang modern yang terletak di Kota Batu, Jawa Timur. Batu Secret Zoo yang berada di tanah seluas 14 hektare tersebut merupakan bagian dari Jatim Park 2, selain Pohon Inn dan Museum Satwa. Beberapa koleksi hewan dari berbagai habitat yang sebagian besar berasal dari Asia dan Afrika dapat ditemukan di kebun binatang ini, antara lain singa putih, kijang afrika, burung macau, dan bermacam-macam reptil.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Ahmad Mumtaz Haris 2241720136',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
              AspectRatio(
              aspectRatio: 21 / 9, // Menyesuaikan rasio aspek gambar
              child: Image.asset(
                'images/wisatabatu.png',
                fit: BoxFit.fitWidth, // Membuat gambar memenuhi lebar layar
              ),
            ),
            gambarkecilSection,
            titleSection,
            buttonSection,
            textSection,
            
          ],
        ),
      ),
    );
  }
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
  
  
}