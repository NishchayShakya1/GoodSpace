import 'package:assignment/widgets/Dashboard/specifications.dart';
import 'package:flutter/material.dart';

class JobContainer extends StatelessWidget {
  const JobContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        side: const BorderSide(
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(10.0), //<-- SEE HERE
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Ios Developer",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.share_outlined))
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "GoodSpace",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Text(
                    "2 Days Ago",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(3, 3, 0, 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.home_outlined,
                    size: 20,
                    color: Colors.grey,
                  ),
                  Text(
                    " Saket, New Delhi",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Specifications(
                  icon: Icons.currency_rupee_outlined,
                  text: '20-25 LPA',
                ),
                Specifications(
                  icon: Icons.star_border,
                  text: '5-7 Years',
                ),
                Specifications(
                  icon: Icons.luggage_outlined,
                  text: 'Remote',
                ),
              ],
            ),
            ListTile(
                leading: const CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/pic.jpg',
                  ),
                  radius: 20,
                ),
                title: const Text('Nishchay'),
                subtitle: const Text('Tooliqa Innovations'),
                trailing: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // <-- Radius
                    ),
                  ),
                  child: const Text(
                    'Apply',
                    style: TextStyle(color: Colors.white),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
