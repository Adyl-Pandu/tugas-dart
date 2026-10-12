import 'package:flutter/material.dart';

void main() {
  runApp(const AplikasiGayaTeks());
}

class AplikasiGayaTeks extends StatelessWidget {
  const AplikasiGayaTeks({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: DaftarGayaTeks(),
      ),
    );
  }
}

class DaftarGayaTeks extends StatelessWidget {
  const DaftarGayaTeks({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Normal',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Bold',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'Semi Bold',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            Text(
              'Italic',
              style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }
}