import 'package:flutter/material.dart';

class AssetImageView extends StatelessWidget {
  const AssetImageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Asset Image"),
      ),
      body: Image.asset(
        'assets/images/1.png',
       width: MediaQuery.of(context).size.width,
        fit: BoxFit.fill,
        // height: 100,
      ),
    );
  }
}
