import 'package:assignment/widgets/Dashboard/job_container.dart';
import 'package:assignment/widgets/Dashboard/listview_container.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          title: const CircleAvatar(
            backgroundImage: AssetImage('assets/pic.jpg'),
            radius: 15,
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.diamond_outlined,
                  color: Colors.blueAccent,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications,
                  color: Colors.blueAccent,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                  color: Colors.blueAccent,
                ))
          ],
        ),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
            child: Row(
              children: [
                Icon(Icons.diamond_outlined),
                Padding(
                  padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                  child: Text(
                    "Step into the Future",
                    style: TextStyle(color: Colors.black),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            height: 180,
            child: ListView(
              // This next line does the trick.
              scrollDirection: Axis.horizontal,
              children: const <Widget>[
                ListViewContainer(),
                ListViewContainer(),
                ListViewContainer(),
                ListViewContainer(),
              ],
            ),
          ),
          const SizedBox(
            width: double.infinity,
            child: Center(
                child: Text(
              'Jobs For You',
              style: TextStyle(fontSize: 25),
            )),
          ),
          const Divider(
            color: Colors.blueAccent,
            thickness: 2,
          ),
          Center(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search Jobs',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: const [
                JobContainer(),
                JobContainer(),
                JobContainer(),
                JobContainer(),
                JobContainer()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
