import 'package:flutter/material.dart';
import 'package:flutter_b9/asset_image.dart';
import 'package:flutter_b9/dynamic_list_view.dart';
import 'package:flutter_b9/list_view_demo.dart';
import 'package:flutter_b9/login.dart';
import 'package:flutter_b9/multiple_selection_demo.dart';
import 'package:flutter_b9/onboarding_view.dart';
import 'package:flutter_b9/single_selection_demo.dart';
import 'package:flutter_b9/tabbar_view.dart';

import 'bottom_bar.dart';
import 'network_image.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TabbarViewDemo(),
    );
  }
}
