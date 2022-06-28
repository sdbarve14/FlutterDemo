import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class categories extends StatelessWidget {
  const categories({Key? key, required this.category}) : super(key: key);

  final String category;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 20,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.red),
          borderRadius: BorderRadius.circular(20)),
      child: Center(
        child: Text(
          this.category,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
