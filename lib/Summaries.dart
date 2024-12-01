import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Summaries extends StatelessWidget {
  const Summaries({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      backgroundColor: const Color.fromRGBO(11, 12, 16, 1),
      body: Center(
        child: Text("Summaries" , style: TextStyle(color: Colors.white),),
      ),
    );;
  }
}
