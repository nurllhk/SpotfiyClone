import 'package:flutter/material.dart';
import 'package:spotfiy/classes/default_key.dart';
import 'package:spotfiy/classes/image_name.dart';
import 'package:spotfiy/classes/palet.dart';
import 'package:spotfiy/classes/title_key.dart';
import '../widgets/album.dart';
import '../widgets/history_album.dart';
import '../widgets/most_music_list.dart';
import '../widgets/music_day_list.dart';


class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Palet.gradiantColor,
                    Colors.black.withOpacity(0)
                  ])),
            ),
            Column(
              children: [
                SafeArea(
                  child: SingleChildScrollView(
                    padding: Palet.pagePadding,
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(Titlekey.album,
                                style:
                                    Theme.of(context).textTheme.headlineSmall),
                            const Row(
                              children: [
                                Icon(Icons.notification_add_rounded),
                                Palet.defaultWeight,
                                Icon(Icons.history),
                                Palet.defaultWeight,
                                Icon(Icons.settings)
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: Palet.heightPadding,
                  child: Row(
                    children: [
                      Album(
                        image:  AssetImage(ImageName.image1),
                        lable: DefaultKey.title1,
                      ),
                      Album(
                        image:  AssetImage(ImageName.image2),
                        lable: DefaultKey.title2,
                      ),
                      Album(
                        image:  AssetImage(ImageName.image3),
                        lable: DefaultKey.title3,
                      ),
                      Album(
                        image:  AssetImage(ImageName.like),
                        lable: DefaultKey.title4,
                      ),
                      Album(
                        image:  AssetImage(ImageName.image4),
                        lable: DefaultKey.title5,
                      ),
                      Album(
                        image:  AssetImage(ImageName.image5),
                        lable: DefaultKey.title6,
                      ),
                      Album(
                        image:  AssetImage(ImageName.image6),
                        lable: DefaultKey.title7,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: Palet.symetric,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        Titlekey.day,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Palet.defaultHeight
                    ],
                  ),
                ),
                const Padding(
                  padding: Palet.listPadding,
                  child: Row(
                    children: [
                      HistoryAlbum(
                        image: AssetImage(ImageName.image6),
                        text: DefaultKey.title8,
                      ),
                      HistoryAlbum(
                        image: AssetImage(ImageName.image7),
                        text: DefaultKey.title9,
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: Palet.listPadding,
                  child: Row(
                    children: [
                      HistoryAlbum(
                        image: AssetImage(ImageName.image8),
                        text: DefaultKey.title10,
                      ),
                      HistoryAlbum(
                        image: AssetImage(ImageName.image9),
                        text: DefaultKey.title11,
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: Palet.listPadding,
                  child: Row(
                    children: [
                      HistoryAlbum(
                        image: AssetImage(ImageName.image10),
                        text: DefaultKey.title12,
                      ),
                      HistoryAlbum(
                        image: AssetImage(ImageName.image11),
                        text: DefaultKey.title13,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: Palet.symetric,
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        Titlekey.list,
                        style: Theme.of(context).textTheme.titleLarge,
                      )),
                ),
                const MostList(),
                Padding(
                  padding: Palet.symetric,
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        Titlekey.music,
                        style: Theme.of(context).textTheme.titleLarge,
                      )),
                ),
                const MusicDayList(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
