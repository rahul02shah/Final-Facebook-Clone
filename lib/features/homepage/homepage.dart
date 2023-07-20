import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../components/StoryItem.dart';

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
                    "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhVYVhUWBL-SjsZNiaYKlpupyGaczng5likS1g1kcDcW79xC4ECd2kRhHvbFG-JUKJWp2ETaXlPN2aNapRb4XTwu5sU98mIPNfypzBfQC_P92RiqDGOiR6McifXmW69o78DVYzy6gRcEWvEIFjLQ-IoIKHjatM1lgEIHuZwt4v9R7ZV5acM1eKpSMvs/s1600/favicon-32x32.png",
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Text("What's on your mind"),
                ),
                CircleAvatar(
                  child: Icon(
                    FontAwesomeIcons.image,
                    color: const Color.fromARGB(255, 10, 186, 19),
                  ),
                  backgroundColor: Colors.grey.withOpacity(0.4),
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
                          Column(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                  clipBehavior: Clip.hardEdge,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    // borderRadius: BorderRadius.vertical(10),
                                  ),
                                  child: Image.network(
                                    "https://images.pexels.com/photos/15281188/pexels-photo-15281188/free-photo-of-view-of-venice-city-and-canal.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
                                    fit: BoxFit.cover,
                                    width: 120,
                                  ),
                                ),
                              ),
                              Expanded(
                                // flex: 1,
                                child: SizedBox(
                                  width: 120,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                    ),
                                    child: Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        Positioned(
                                          top: -18,
                                          left: 40,
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(4.0),
                                              child: CircleAvatar(
                                                child: Icon(
                                                  Icons.add,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          bottom: 5,
                                          left: 40,
                                          child: Text(
                                            "Create\nStory",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          ListView.separated(
                            scrollDirection: Axis.horizontal,
                            physics: NeverScrollableScrollPhysics(),
                            separatorBuilder: (context, index) => SizedBox(
                              width: 8,
                            ),
                            itemBuilder: (context, index) {
                              return StoryItemWidget();
                            },
                            shrinkWrap: true,
                            itemCount: 5,
                          ),
                        ],
                      ),
                      Text("Reels"),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey.withOpacity(0.4),
                  thickness: 10,
                ),
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhVYVhUWBL-SjsZNiaYKlpupyGaczng5likS1g1kcDcW79xC4ECd2kRhHvbFG-JUKJWp2ETaXlPN2aNapRb4XTwu5sU98mIPNfypzBfQC_P92RiqDGOiR6McifXmW69o78DVYzy6gRcEWvEIFjLQ-IoIKHjatM1lgEIHuZwt4v9R7ZV5acM1eKpSMvs/s1600/favicon-32x32.png"),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Rahul Shah",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "4m",
                                      style: TextStyle(
                                          color: Colors.grey.withOpacity(0.9),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("."),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Icon(
                                      FontAwesomeIcons.clock,
                                      size: 10,
                                    ),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Text("."),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      FontAwesomeIcons.globe,
                                      size: 10,
                                    )
                                  ],
                                )
                              ],
                            )),
                            Icon(FontAwesomeIcons.ellipsis)
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey.withOpacity(0.4),
                        thickness: 2,
                      ),
                      Image.asset("assets/logo/post_img.png"),
                      Divider(
                        color: Colors.grey.withOpacity(0.4),
                        thickness: 1,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                FontAwesomeIcons.thumbsUp,
                                size: 17,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Like",
                                style: TextStyle(
                                    color: Colors.grey.withOpacity(0.9)),
                              )
                            ],
                          )),
                          Expanded(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                FontAwesomeIcons.message,
                                size: 15,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Comments",
                                style: TextStyle(
                                    color: Colors.grey.withOpacity(0.9)),
                              )
                            ],
                          )),
                          Expanded(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                FontAwesomeIcons.share,
                                size: 15,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Share",
                                style: TextStyle(
                                    color: Colors.grey.withOpacity(0.9)),
                              )
                            ],
                          )),
                        ],
                      ),
                      Divider(
                        color: Colors.grey.withOpacity(0.4),
                        thickness: 1,
                      ),
                      BottomNavigationBar(
                          type: BottomNavigationBarType.fixed,
                          items: [
                            BottomNavigationBarItem(
                              icon: Icon(
                                FontAwesomeIcons.house,
                                size: 20,
                              ),
                              label: "Home",
                            ),
                            BottomNavigationBarItem(
                              icon: Icon(
                                FontAwesomeIcons.userGroup,
                                size: 20,
                              ),
                              label: "Friends",
                            ),
                            BottomNavigationBarItem(
                              icon: Icon(
                                FontAwesomeIcons.bell,
                                size: 20,
                                color: Colors.black87,
                              ),
                              label: "Notification",
                            ),
                            BottomNavigationBarItem(
                              icon: Icon(
                                FontAwesomeIcons.user,
                                size: 20,
                                color: Colors.black87,
                              ),
                              label: "Profile",
                              backgroundColor: Colors.green,
                            ),
                            BottomNavigationBarItem(
                              icon: Icon(
                                FontAwesomeIcons.bars,
                                size: 20,
                                color: Colors.black87,
                              ),
                              label: "Menu",
                            ),
                          ])
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
