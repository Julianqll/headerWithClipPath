import 'package:flutter/material.dart';

class ListDivider extends StatelessWidget {
  const ListDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: Colors.grey, //color of divider
      height: 5, //height spacing of divider
      thickness: 0.5, //thickness of divier line
      );
  }
}