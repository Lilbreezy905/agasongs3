import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uhuru_music_stable/PAGES/PlayListsPage.dart';
import 'package:uhuru_music_stable/PAGES/homepage.dart';
import 'package:uhuru_music_stable/PAGES/musicpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'UMUSIC',
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const HomePage(),
        "PlayListsPage": (context) => const PlayListsPage(),
        "MusicPage": (context) => const MusicPage(),
      },
    );
  }
}
