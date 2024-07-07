// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uhuru_music_stable/Widgets/musiclist.dart';
import 'package:uhuru_music_stable/Widgets/playlist_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomCenter,
                colors: [
              Color(0xFF303151).withOpacity(0.6),
              Color(0xFF303151).withOpacity(0.9)
            ])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.sort_rounded,
                            color: Colors.pink,
                            size: 30,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.more_vert,
                            color: Colors.pink,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Text(
                      'uhuru music',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Text(
                      'global music ',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15, bottom: 20, right: 20),
                    child: Container(
                      height: 50,
                      width: 370,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 15),
                            height: 50,
                            width: 280,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: "saerch song",
                                  hintStyle: TextStyle(
                                    color: Colors.pink,
                                  ),
                                  border: InputBorder.none),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Icon(
                              Icons.search,
                              color: Colors.pink,
                              size: 30,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  TabBar(
                    isScrollable: true,
                    labelStyle: TextStyle(fontSize: 20),
                    indicator: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                      width: 3,
                      color: Colors.pink,
                    ))),
                    tabs: const [
                      Tab(
                        text: 'music',
                      ),
                      Tab(
                        text: 'playlists',
                      ),
                      Tab(
                        text: 'favorite',
                      ),
                      Tab(
                        text: 'new',
                      ),
                      Tab(
                        text: 'collection',
                      ),
                      Tab(
                        text: 'treding',
                      )
                    ],
                  ),
                  Flexible(
                    flex: 1,
                    child: TabBarView(
                      children: const [
                        MusicListDetail(),
                        PlatListWidget(),
                        MusicLists(),
                        MusicLists(),
                        MusicLists(),
                        MusicLists(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
