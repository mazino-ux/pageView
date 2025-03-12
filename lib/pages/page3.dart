import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 231, 10, 10),
        ),
      child: Center(
        child: Text('Page 2'),
      ),
    );

  }
}