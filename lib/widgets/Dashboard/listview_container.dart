import 'package:flutter/material.dart';

class ListViewContainer extends StatelessWidget {
  const ListViewContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8,0,8,0),
      child: Container(
        width: 180,
        padding: const EdgeInsets.fromLTRB(5,0,5,0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Column(
           
          children: [
            Align(alignment: Alignment.topRight,
              child: Icon(Icons.check, color: Colors.green, size: 20)),
            SizedBox(height: 10),
            CircleAvatar(
              backgroundImage: AssetImage('assets/pic.jpg'),
              radius: 30,
            ),
            SizedBox(height: 10),
            Text('Nishchay', style: TextStyle(fontSize: 20)),
            Text('AI Career Counsellor', style: TextStyle(fontSize: 15))
          ],
        ),
      ),
    );
  }
}
