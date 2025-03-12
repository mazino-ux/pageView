import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 107, 4, 136),
        ),
      child: Center(
        child: Text('Page 1'),
      ),
    );

  }
}