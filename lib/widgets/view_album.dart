import 'package:flutter/material.dart';
import 'package:spotfiy/classes/default_key.dart';
import 'package:spotfiy/classes/image_name.dart';
import 'package:spotfiy/classes/palet.dart';

class ViewAlbum extends StatelessWidget {
  final ImageProvider image;
  final String text;

  const ViewAlbum({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Palet.gradiantColor,
          ),
          SafeArea(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 2.1,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                      Colors.black.withOpacity(0),
                      Colors.black.withOpacity(0),
                      Colors.black.withOpacity(1),
                    ], begin: Alignment.center, end: Alignment.bottomCenter)),
                    child: Column(
                      children: [
                        Container(
                          decoration:
                              BoxDecoration(boxShadow: [Palet.shadowType]),
                          child: Image(
                            image: image,
                            width: MediaQuery.of(context).size.width / 1.5,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: Palet.pagePadding,
                          child: Column(
                            children: [
                              Text(
                                text,
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                              const Padding(
                                padding: Palet.heightPadding,
                                child: Row(
                                  children: [
                                    Image(
                                        image: AssetImage(ImageName.logo),
                                        width: 50,
                                        height: 50),
                                    Text(DefaultKey.spotfiy)
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.black,
                    height: MediaQuery.of(context).size.height,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
