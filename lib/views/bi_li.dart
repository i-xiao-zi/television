import 'package:flutter/material.dart';

class BiLi extends StatefulWidget {
  const BiLi({super.key});

  @override
  State<BiLi> createState() => _BiLiState();
}

class _BiLiState extends State<BiLi> {

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