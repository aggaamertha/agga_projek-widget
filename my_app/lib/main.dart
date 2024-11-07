import 'package:flutter/material.dart';
import 'widgets/profile_card.dart';
import 'widgets/like_counter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Contoh Widget Flutter'),
          backgroundColor: Colors.blue,
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Menggunakan Stateless Widget
              ProfileCard(
                nama: 'Agga Jenius',
                pekerjaan: 'Flutter Developer',
              ),
              SizedBox(height: 20),
              // Menggunakan Stateful Widget
              LikeCounter(),
            ],
          ),
        ),
      ),
    );
  }
}