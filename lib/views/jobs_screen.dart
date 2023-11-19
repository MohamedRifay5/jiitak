import 'package:flutter/material.dart';

class JobScreen extends StatelessWidget {
  const JobScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Center(
          child: Text(
        'Job Screen',
        style: TextStyle(fontSize: 25.0),
      )),
    );
  }
}
