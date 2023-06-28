import 'package:flutter/material.dart';

import '../classes/image_name.dart';
import '../classes/palet.dart';
import 'music.dart';
class MostList extends StatelessWidget {
  const MostList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: Palet.heightPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              MusicCard(
                image: AssetImage(ImageName.image4),
              ),
              MusicCard(
                image: AssetImage(ImageName.image5),
              ),
              MusicCard(
                image: AssetImage(ImageName.image7),
              ),
              MusicCard(
                image: AssetImage(ImageName.image1),
              ),
              MusicCard(
                image: AssetImage(ImageName.image10),
              ),
              MusicCard(
                image: AssetImage(ImageName.image9),
              ),
              MusicCard(
                image: AssetImage(ImageName.image8),
              ),
              MusicCard(
                image: AssetImage(ImageName.image2),
              ),
            ],
          ),
        ],
      ),
    );
  }
}