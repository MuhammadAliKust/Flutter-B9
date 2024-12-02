import 'package:flutter/material.dart';
import 'package:flutter_b9/providers/user_provider.dart';
import 'package:flutter_b9/screen_b.dart';
import 'package:provider/provider.dart';

class ScreenAView extends StatelessWidget {
  ScreenAView({super.key});

  String name = "Ali";

  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen A"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              userProvider.setName('Aliii');
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ScreenBView()));
            },
            child: Text("Go to Screen B")),
      ),
    );
  }
}
