// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uhuru_music_stable/Widgets/musiclist.dart';
import 'package:uhuru_music_stable/Widgets/playlist_widget.dart';
import 'package:uhuru_music_stable/PAGES/music_list.dart';
import 'package:uhuru_music_stable/controller/connectivity.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
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
          body: GetBuilder<ConnectivityCheck>(
              init: ConnectivityCheck(),
              builder: (controller) {
                return SafeArea(
                  child: Padding(
                    padding: EdgeInsets.only(left: 20, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                        TabBar(
                          isScrollable: true,
                          labelStyle: TextStyle(fontSize: 20),
                          indicator: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                            width: 3,
                            color: Colors.pink,
                          ))),
                          tabs: [
                            Tab(
                              text: 'music',
                            ),
                            Tab(
                              text: 'new',
                            ),
                            Tab(
                              text: 'treding',
                            )
                          ],
                        ),
                        Flexible(
                          flex: 1,
                          child: TabBarView(
                            children: [
                              controller.hasConnection
                                  ? MusicListDetail(
                                      query: 'music usa ',
                                    )
                                  : Center(
                                      child: Text('No internet connection'),
                                    ),
                              controller.hasConnection
                                  ? MusicListDetail(
                                      query: 'new music 2024 ',
                                    )
                                  : Center(
                                      child: Text('No internet connection'),
                                    ),
                              controller.hasConnection
                                  ? MusicListDetail(
                                      query: 'treding music ',
                                    )
                                  : Center(
                                      child: Text('No internet connection'),
                                    ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
