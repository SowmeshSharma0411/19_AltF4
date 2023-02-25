import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CompareIt extends StatefulWidget {
  const CompareIt({super.key});

  @override
  State<CompareIt> createState() => _CompareItState();
}

class _CompareItState extends State<CompareIt> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Compare It',
          style: TextStyle(fontSize: 30, color: Colors.amber)),
    );
  }
}
