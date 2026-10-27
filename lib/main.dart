import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp(
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
      body: MyPages(),
    );
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout Rules Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: home,
    );
  }
}
