import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomerConnect extends StatefulWidget {
  const CustomerConnect({super.key});

  @override
  State<CustomerConnect> createState() => _CompareItState();
}

class _CompareItState extends State<CustomerConnect> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Customer Connect',
          style: TextStyle(fontSize: 30, color: Colors.amber)),
    );
  }
}
