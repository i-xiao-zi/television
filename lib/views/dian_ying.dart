import 'package:flutter/material.dart';

class DianYing extends StatefulWidget {
  const DianYing({super.key});

  @override
  State<DianYing> createState() => _DianYingState();
}

class _DianYingState extends State<DianYing> {

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