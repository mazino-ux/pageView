import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 10, 187, 231),
        ),
      child: Center(
        child: Text('Page 2'),
      ),
    );

  }
}