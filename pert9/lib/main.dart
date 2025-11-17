import 'package:flutter/material.dart';
import 'Hewan.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HewanApp(),
    );
  }
}

class HewanApp extends StatefulWidget {
  @override
  _HewanAppState createState() => _HewanAppState();
}

class _HewanAppState extends State<HewanApp> {
  Hewan hewan = Hewan('Mimi', 4.5);

  void tambahBerat() {
    setState(() {
      hewan.berat += 1;
    });
  }

  void kurangiBerat() {
    setState(() {
      hewan.berat -= 0.5;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan Flutter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Berat Hewan: ${hewan.berat.toStringAsFixed(1)} kg',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: tambahBerat,
              child: Text('Makan'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: kurangiBerat,
              child: Text('Lari'),
            ),
          ],
        ),
      ),
    );
  }
}