import 'package:flutter/material.dart';

class DianShi extends StatefulWidget {
  const DianShi({super.key});

  @override
  State<DianShi> createState() => _DianShiState();
}

class _DianShiState extends State<DianShi> {

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Hot Home'),
        Expanded(
          child: Text('Hot Home'),
        ),
      ],
    );
  }
}