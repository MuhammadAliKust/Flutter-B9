import 'dart:developer';

import 'package:flutter/material.dart';

class SingleSelectionDemo extends StatefulWidget {
  SingleSelectionDemo({super.key});

  @override
  State<SingleSelectionDemo> createState() => _SingleSelectionDemoState();
}

class _SingleSelectionDemoState extends State<SingleSelectionDemo> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Single Selection List View Demo"),
        ),
        body: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, i) {
              return ListTile(
                  onTap: () {
                    selectedIndex = i;
                    setState(() {});
                    log(selectedIndex.toString());
                  },
                  tileColor: selectedIndex == i ? Colors.blue : Colors.white,
                  leading: Icon(Icons.notifications),
                  title: Text("Selected Index:  $selectedIndex"),
                  subtitle: Text("Loop Index: $i"),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.arrow_forward_ios),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ));
            }));
  }
}
