import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DriveThru extends StatefulWidget {
  const DriveThru({super.key});

  @override
  State<DriveThru> createState() => _CompareItState();
}

class _CompareItState extends State<DriveThru> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Drive Thru',
          style: TextStyle(fontSize: 30, color: Colors.amber)),
    );
  }
}
