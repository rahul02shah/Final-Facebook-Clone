import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Homepage extends StatefulWidget {
  const Homepage({
    super.key,
  });

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>
    with SingleTickerProviderStateMixin {
  late final TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/logo/facebook.png",
          height: 32,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          CircleAvatar(
            backgroundColor: Colors.grey.withOpacity(0.5),
            child: Icon(FontAwesomeIcons.plus, color: Colors.black),
          ),
          SizedBox(
            width: 8,
          ),
          CircleAvatar(
            backgroundColor: Colors.grey.withOpacity(0.5),
            child: Icon(FontAwesomeIcons.magnifyingGlass, color: Colors.black),
          ),
          SizedBox(
            width: 8,
          ),
          CircleAvatar(
            backgroundColor: Colors.grey.withOpacity(0.5),
            child:
                Icon(FontAwesomeIcons.facebookMessenger, color: Colors.black),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/16122334/pexels-photo-16122334/free-photo-of-man-standing-on-a-deck-near-a-bridge-with-the-view-of-istanbul-across-the-bosphorus-strait.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Text("What's on your mind"),
                ),
                Icon(
                  FontAwesomeIcons.image,
                )
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Divider(
                  thickness: 10,
                ),
                TabBar(
                  controller: tabController,
                  unselectedLabelStyle: TextStyle(fontSize: 16),
                  labelStyle: TextStyle(
                    fontSize: 16,
                  ),
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  tabs: [
                    Tab(
                      text: "Stories",
                    ),
                    Tab(
                      text: "Reels",
                    ),
                  ],
                ),
                SizedBox(
                  height: 300,
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      Text("Stories"),
                      Text("Reels"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
