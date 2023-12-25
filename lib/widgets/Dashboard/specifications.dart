import 'package:flutter/material.dart';

class Specifications extends StatelessWidget {
  final String text;
  final IconData icon;
  const Specifications({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        side: const BorderSide(
          color: Colors.greenAccent,
        ),
        borderRadius: BorderRadius.circular(10.0), //<-- SEE HERE
      ),
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(icon, size: 15,),
            SizedBox(width: 8,),
            Text(
              text,
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
