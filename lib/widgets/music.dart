import 'package:flutter/material.dart';


class MusicCard extends StatelessWidget {
  final ImageProvider image ;

  const MusicCard({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 5),
child: Column(

  children: [
        Card(
      child:   Image(image:image,width: 140,height: 150,fit: BoxFit.cover,),
    ),
  ],
)
    );
  }
}
