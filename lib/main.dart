import 'package:flutter/material.dart';
import 'package:flutter_b9/asset_image.dart';
import 'package:flutter_b9/bottom_sheet.dart';
import 'package:flutter_b9/dialog_box_demo.dart';
import 'package:flutter_b9/dynamic_list_view.dart';
import 'package:flutter_b9/google_map_view.dart';
import 'package:flutter_b9/grid_view_demo.dart';
import 'package:flutter_b9/list_view_demo.dart';
import 'package:flutter_b9/login.dart';
import 'package:flutter_b9/multiple_selection_demo.dart';
import 'package:flutter_b9/onboarding_view.dart';
import 'package:flutter_b9/providers/user_provider.dart';
import 'package:flutter_b9/screen_a.dart';
import 'package:flutter_b9/single_selection_demo.dart';
import 'package:flutter_b9/tabbar_view.dart';
import 'package:provider/provider.dart';

import 'bottom_bar.dart';
import 'network_image.dart';

void main() {
  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => UserProvider())],
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GoogleMapView(),
    );
  }
}
