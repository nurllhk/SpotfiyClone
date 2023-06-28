import 'package:flutter/material.dart';
import 'package:spotfiy/classes/palet.dart';

class MusicCard extends StatelessWidget {
  final ImageProvider image;

  const MusicCard({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: Palet.listPadding,
        child: Column(
          children: [
            Card(
              child: Image(
                image: image,
                width: 140,
                height: 140,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ));
  }
}
