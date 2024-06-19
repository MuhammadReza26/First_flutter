import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Halaman Pertama',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Displaying the logo image
            Image.asset(
              'lib/assets/images/logo.jpg',
              width: 300,
              height: 300,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 50),
            // Get Started Button
            ElevatedButton(
              onPressed: () {
                // Navigate to the next screen when the button is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NextScreen()),
                );
              },
              child: const Text('Get Started'),
            ),
          ],
        ),
      ),
    );
  }
}

class NextScreen extends StatelessWidget {
  const NextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Daftar gambar lokal yang ada di folder assets/images
    List<String> valorantImages = [
      'lib/assets/images/image1.jpg',
      'lib/assets/images/image2.jpg',
      'lib/assets/images/image3.jpg',
      'lib/assets/images/image4.jpg',
      'lib/assets/images/image5.jpg',
      'lib/assets/images/image6.jpg',
      'lib/assets/images/image7.jpg',
      'lib/assets/images/image8.jpg',
      'lib/assets/images/image9.jpg',

    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Kedua'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Text(
                  'Hi, Muhammad Reza',
                  style: TextStyle(fontSize: 24),
                ),
                Spacer(),
                CircleAvatar(
                  backgroundImage: AssetImage('lib/assets/images/avatar.jpg'),
                  radius: 20,
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Gambar favorit',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 515,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: valorantImages.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 16),
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: AssetImage(valorantImages[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
