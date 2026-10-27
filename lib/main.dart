import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: LayoutRulesExample(),
  ));
}

class LayoutRulesExample extends StatelessWidget {
  const LayoutRulesExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tiga Aturan Layout Flutter'),
      ),
      body: const MyPages1(),
    );
  }
}

class MyPages1 extends StatelessWidget {
  const MyPages1({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Aturan 1 & 2. Aturan Constraint (Batas) dan size (Ukuran)',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Induk Di Paksa Anak Di Batas 100x100 hingga 200x200. Anak Minta Ukuran 500x50, Tapi Dipaksa Ikut Batas Induk (Mentok Di Lebar 200,tinggi 100.)',
            ),
            const SizedBox(height: 10),

            // contoh ATURAN 1 & 2
            ConstrainedBox(
              // INDUK memberikan constraints ke bawah (Constraints turun)
              constraints: const BoxConstraints(
                minWidth: 100,
                maxWidth: 200,
                minHeight: 100,
                maxHeight: 200,
              ),
              // ANAK mencoba menentukan ukuran (Ukuran naik)
              child: Container(
                width: 500,
                height: 50,
                color: Colors.blue,
                child: const Text(
                  'Saya minta 500x50, tapi dapatnya 200x100',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}