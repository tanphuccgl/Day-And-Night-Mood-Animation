import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              width: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: DefaultTabController(
                  length: 2,
                  child: TabBar(
                      labelColor: Colors.black,
                      indicatorColor: Colors.white,
                      unselectedLabelColor: Colors.white,
                      indicator: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      tabs: const [
                        Tab(
                          text: 'Morning login',
                        ),
                        Tab(
                          text: 'Night Login',
                        )
                      ])),
            ),
            const Text(
              'Good Morning',
            ),
            const Text(
              'Enter your information below',
            ),
            Column(
              children: [
                const Text('Email'),
                TextField(
                  controller: TextEditingController(
                      text: 'phamnguyentanphucgl@gmail.com'),
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(
                              color: Colors.black12, width: 1))),
                ),
              ],
            ),
            Column(
              children: [
                const Text('Password'),
                TextField(
                  controller: TextEditingController(text: 'XXXXXXX'),
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(
                              color: Colors.black12, width: 1))),
                ),
              ],
            ),
          ],
        ),
      ))
    ]));
  }
}
