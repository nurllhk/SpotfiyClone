import 'package:flutter/material.dart';

import '../widgets/album.dart';
import '../widgets/history_album.dart';
import '../widgets/music.dart';

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
                      colors: [Colors.white, Colors.black.withOpacity(0)])),
            ),
            Column(
              children: [
                SafeArea(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(20),
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Recently played',
                                style:
                                    Theme.of(context).textTheme.headlineSmall),
                            const Row(
                              children: [
                                Icon(Icons.notification_add_rounded),
                                SizedBox(
                                  width: 15,
                                ),
                                Icon(Icons.history),
                                SizedBox(
                                  width: 15,
                                ),
                                Icon(Icons.settings)
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Album(
                        image: const AssetImage('images/1.png'),
                        lable: 'Pop Mode',
                      ),
                      Album(
                        image: const AssetImage('images/2.png'),
                        lable: 'Motivation Mix',
                      ),
                      Album(
                        image: const AssetImage('images/3.png'),
                        lable: 'Top 100',
                      ),
                      Album(
                        image: const AssetImage('images/like.png'),
                        lable: 'Liked',
                      ),
                      Album(
                        image: const AssetImage('images/4.png'),
                        lable: 'Power play',
                      ),
                      Album(
                        image: const AssetImage('images/5.png'),
                        lable: 'Top Podcast',
                      ),
                      Album(
                        image: const AssetImage('images/6.png'),
                        lable: 'Learn Song',
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Good night',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                  child: Row(
                    children: [
                      HistoryAlbum(
                        image: AssetImage('images/6.png'),
                        text: 'Pop Music',
                      ),
                      HistoryAlbum(
                        image: AssetImage('images/7.png'),
                        text: 'Slow Türkçe',
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                  child: Row(
                    children: [
                      HistoryAlbum(
                        image: AssetImage('images/8.png'),
                        text: 'Dailiy Mix 1',
                      ),
                      HistoryAlbum(
                        image: AssetImage('images/9.png'),
                        text: 'Dailiy Mix 2',
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                  child: Row(
                    children: [
                      HistoryAlbum(
                        image: AssetImage('images/10.png'),
                        text: 'Lost. Mix',
                      ),
                      HistoryAlbum(
                        image: AssetImage('images/11.png'),
                        text: 'Rock Music',
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Your Recent Listening',
                        style: Theme.of(context).textTheme.titleLarge,
                      )),
                ),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          MusicCard(
                            image: AssetImage('images/4.png'),
                          ),
                          MusicCard(
                            image: AssetImage('images/5.png'),
                          ),
                          MusicCard(
                            image: AssetImage('images/7.png'),
                          ),
                          MusicCard(
                            image: AssetImage('images/1.png'),
                          ),
                          MusicCard(
                            image: AssetImage('images/10.png'),
                          ),
                          MusicCard(
                            image: AssetImage('images/9.png'),
                          ),
                          MusicCard(
                            image: AssetImage('images/8.png'),
                          ),
                          MusicCard(
                            image: AssetImage('images/2.png'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
