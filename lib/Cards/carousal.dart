import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Carousal extends StatelessWidget {
  const Carousal({Key? key, required this.imageLink}) : super(key: key);

  final String imageLink;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.red),
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
            fit: BoxFit.fill, image: AssetImage(this.imageLink)),
      ),
    );
  }
}
