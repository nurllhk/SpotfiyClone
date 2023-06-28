import 'package:flutter/material.dart';

class HistoryAlbum extends StatelessWidget {
  final ImageProvider image;
  final String text;
  const HistoryAlbum({
    required this.image,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        width: MediaQuery.of(context).size.width/2.4,
        decoration: BoxDecoration(
          color: Colors.white10,
          borderRadius: BorderRadius.circular(10),
        ),
        clipBehavior: Clip.antiAlias,
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Image(
              image: image,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
            const SizedBox(width:2),
            Text(text,style: Theme.of(context).textTheme.labelLarge,),
            const SizedBox(width: 2),
          ],
        ),
      ),
    );
  }
}