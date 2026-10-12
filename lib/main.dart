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
              'Halo!',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Hari ini seneng banget!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Akhirnya tugas selesai juga.',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'Semoga besok lebih menyenangkan.',
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
              ),
            ),
            Text(
              'Aku siap menghadapi hari esok.',
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue,
              ),
            ),
          ],

        ),
      ),
    );
  }
}