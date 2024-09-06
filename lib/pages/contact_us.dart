// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  String name;
   ContactUs({super.key,required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("ContactUs $name"),
      ),
    );
  }
}
