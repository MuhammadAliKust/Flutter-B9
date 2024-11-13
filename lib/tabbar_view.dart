import 'package:flutter/material.dart';

class TabbarViewDemo extends StatelessWidget {
  const TabbarViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tabbar View"),
          bottom:
              TabBar(tabs: [Text("Home"), Text("Favorite"), Text("Profile")]),
        ),
        body: TabBarView(children: [
          Center(
            child: Text("Home"),
          ),
          Center(
            child: Text("Favorite"),
          ),
          Center(
            child: Text("Profile"),
          ),
        ]),
      ),
    );
  }
}
