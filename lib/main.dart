import 'package:flutter/material.dart';
import 'package:task2p2_w2/feautures/homePage/presentation/view/home_page.dart';

void main() {
  runApp(const Task2P2W2());
}

class Task2P2W2 extends StatelessWidget {
  const Task2P2W2({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
