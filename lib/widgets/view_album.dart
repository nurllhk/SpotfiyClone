import 'package:flutter/material.dart';


class ViewAlbum extends StatelessWidget {
  final ImageProvider image;
  const ViewAlbum({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color:Colors.pink ,
          )
        ],
      ),
    );
  }
}
