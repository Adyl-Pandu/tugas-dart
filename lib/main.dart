
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Belajar Flutter'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const TextScalerWidget(),
            ),
          ),
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;
  final TextStyle? style;

  const SectionTitle({
    super.key,
    required this.title,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: (style ?? const TextStyle()).copyWith(
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class TextScalerWidget extends StatelessWidget {
  const TextScalerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        SectionTitle(
          title: 'Belajar Flutter',
          style: TextStyle(color: Colors.blue),
        ),
        SizedBox(height: 15),
        Text(
          'Halo! Hari ini saya sedang belajar '
          'class, constructor, dan parameter di Dart.',
          textScaler: TextScaler.linear(1.5),
        ),
        SizedBox(height: 20),
        Text(
          'Ukuran teks normal',
          textScaler: TextScaler.linear(1.0),
        ),
        SizedBox(height: 10),
        Text(
          'Ukuran teks lebih besar',
          textScaler: TextScaler.linear(1.5),
        ),
      ],
    );
  }
}
