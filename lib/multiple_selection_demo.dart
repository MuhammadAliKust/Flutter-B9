import 'dart:developer';

import 'package:flutter/material.dart';

class MultipleSelectionDemo extends StatefulWidget {
  MultipleSelectionDemo({super.key});

  @override
  State<MultipleSelectionDemo> createState() => _MultipleSelectionDemoState();
}

class _MultipleSelectionDemoState extends State<MultipleSelectionDemo> {
  List<int> selectedIndex = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Multiple Selection List View Demo"),
        ),
        body: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, i) {
              return ListTile(
                  onTap: () {
                    if (selectedIndex.contains(i)) {
                      selectedIndex.remove(i);
                    } else {
                      selectedIndex.add(i);
                    }

                    setState(() {});
                    log(selectedIndex.toString());
                  },
                  tileColor:
                      selectedIndex.contains(i) ? Colors.blue : Colors.white,
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
