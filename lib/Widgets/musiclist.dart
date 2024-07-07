// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:uhuru_music_stable/utilities/app_theme.dart';
import 'package:uhuru_music_stable/utilities/image_url.dart';
import 'package:uhuru_music_stable/utilities/song_name.dart';

import '../utilities/spacer.dart';

final spacer = SpacerClass();
// final imageUrls = ImageUrls();
// final songName = SongName();
final textWhite = TextStyle(
  color: AppTheme.white,
  fontSize: 10,
);

class MusicListDetail extends StatelessWidget {
  const MusicListDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: 5,
      itemBuilder: (context, index) {
        return musicInfoWidget(
          imageUrl: ImageUrls.imageUrls[index],
          songTitle: SongName.songNames['song'][index],
          singerName: SongName.songNames['artistes'][index],
          numberOfLike: SongName.songNames['likes'][index],
          numberOfViews: SongName.songNames['views'][index],
        );
      },
    );
  }
}

Widget musicInfoWidget(
        {required String imageUrl,
        required String songTitle,
        required String singerName,
        required String numberOfLike,
        required String numberOfViews}) =>
    Column(
      children: [
        Container(
          height: 120,
          decoration: BoxDecoration(
            color: Colors.transparent,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            child: Row(
              children: [
                Container(
                  height: 100,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: CachedNetworkImageProvider(imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    softWrap: true,
                                    songTitle.toUpperCase(),
                                    style: TextStyle(
                                      color: AppTheme.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                  // SizedBox(
                                  //   height: spacer.getVerticalSize(0.05),
                                  // ),
                                  Text(
                                    singerName,
                                    style: TextStyle(
                                      color: AppTheme.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  SizedBox(
                                    height: spacer.getVerticalSize(0.01),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        numberOfLike,
                                        style: TextStyle(
                                          color: AppTheme.white,
                                          fontSize: 10,
                                        ),
                                      ),
                                      SizedBox(
                                        width: spacer.getHorizontalSize(0.01),
                                      ),
                                      Icon(
                                        Icons.thumb_up,
                                        color: AppTheme.white,
                                        size: 16,
                                      ),
                                      SizedBox(
                                        width: spacer.getHorizontalSize(
                                          0.03,
                                        ),
                                      ),
                                      Text(
                                        numberOfViews,
                                        style: TextStyle(
                                          color: AppTheme.white,
                                          fontSize: 10,
                                        ),
                                      ),
                                      SizedBox(
                                        width: spacer.getHorizontalSize(0.01),
                                      ),
                                      Icon(
                                        Icons.remove_red_eye,
                                        color: AppTheme.white,
                                        size: 16,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: AppTheme.green,
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.play_arrow,
                                    color: AppTheme.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        // Padding(
        //   padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
        //   child: Divider(
        //     color: AppTheme.white,
        //     height: 0.04,
        //   ),
        // )
      ],
    );

class MusicLists extends StatelessWidget {
  const MusicLists({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          for (int i = 1; i < 20; i++)
            Container(
              margin: EdgeInsets.only(top: 12, right: 15, left: 5),
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              decoration: BoxDecoration(
                  color: Color(0xFF30314D),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Text(
                    i.toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'MusicPage');
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'imagine dragons - believer',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                'bass',
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.9),
                                    fontSize: 15),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '-',
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.5),
                                    fontSize: 15),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '2:34',
                                style:
                                    TextStyle(color: Colors.pink, fontSize: 15),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Icon(
                      Icons.play_arrow,
                      size: 24,
                      color: Colors.pink,
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
