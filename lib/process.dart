import 'package:flutter/material.dart';

class Process extends StatefulWidget {
  const Process({super.key});

  @override
  State<Process> createState() => _ProcessState();
}

class _ProcessState extends State<Process> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('process'),
      ),
    );
  }
}
