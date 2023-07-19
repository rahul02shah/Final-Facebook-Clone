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
                  height: 200,
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      ListView(
                        padding: EdgeInsets.all(16),
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.grey,
                              ),
                              color: Colors.grey.shade300,
                            ),
                            height: 100,
                            width: 120,
                            clipBehavior: Clip.hardEdge,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Image.network(
                                    "https://images.pexels.com/photos/15236595/pexels-photo-15236595/free-photo-of-baku.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Expanded(
                                  child:
                                      Stack(clipBehavior: Clip.none, children: [
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Text(
                                        "Create\nStory",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: -24,
                                      left: 40,
                                      child: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        child: Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: CircleAvatar(
                                            child: Icon(
                                              FontAwesomeIcons.plus,
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ]),
                                ),
                              ],
                            ),
                          ),
                          StoryItemWidget(),
                        ],
                      ),
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

class StoryItemWidget extends StatelessWidget {
  const StoryItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey,
        ),
        color: Colors.grey.shade300,
      ),
      height: 100,
      width: 120,
      clipBehavior: Clip.hardEdge,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            "https://images.pexels.com/photos/15236595/pexels-photo-15236595/free-photo-of-baku.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 10,
            left: 10,
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              clipBehavior: Clip.hardEdge,
              child: Image.network(
                "https://images.pexels.com/photos/15236595/pexels-photo-15236595/free-photo-of-baku.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
              bottom: 10,
              left: 8,
              child: Text(
                "BBC News",
                style: TextStyle(
                  color: Colors.white,
                ),
              )),
        ],
      ),
    );
  }
}
