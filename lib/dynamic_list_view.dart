import 'package:flutter/material.dart';
import 'package:flutter_b9/models/user.dart';

class DynamicListView extends StatefulWidget {
  DynamicListView({super.key});

  @override
  State<DynamicListView> createState() => _DynamicListViewState();
}

class _DynamicListViewState extends State<DynamicListView> {
  List<UserModel> userList = [
    UserModel(name: 'Ali', email: 'ali@mail.com', image: 'assets/images/1.png'),
    UserModel(
        name: 'Adan', email: 'adan@mail.com', image: 'assets/images/1.png'),
    UserModel(
        name: 'Tahir', email: 'tahir@mail.com', image: 'assets/images/1.png'),
  ];

  List<int> likedPost = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dynamic List View"),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, i) {
            return Column(
              children: [
                Image.asset('assets/images/1.png'),
                Text("Title"),
                Text("Description"),
                Text("Time"),
                Text("Date"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                        onPressed: () {
                          likedPost.add(i);
                          setState(() {});
                        },
                        icon: Icon(
                          Icons.favorite,
                          color:
                              likedPost.contains(i) ? Colors.red : Colors.black,
                        )),
                    Icon(Icons.thumb_up),
                    Icon(Icons.bookmark),
                    Icon(Icons.thumb_up),
                  ],
                ),
                SizedBox(
                  height: 30,
                )
              ],
            );
          }),
    );
  }
}
