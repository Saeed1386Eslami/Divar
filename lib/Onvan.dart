import 'package:flutter/material.dart';

class Onvan extends StatelessWidget {
  const Onvan({super.key});

  @override
  Widget build(BuildContext context) {
    return (Row(
      children: [

        Expanded(child: Text('مقدار')),
        Text('عنوان'),
      ],
    ));
  }
}





