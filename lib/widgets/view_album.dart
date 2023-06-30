import 'package:flutter/material.dart';
import 'package:spotfiy/classes/default_key.dart';
import 'package:spotfiy/classes/image_name.dart';
import 'package:spotfiy/classes/palet.dart';
import 'package:spotfiy/view/home.dart';

import 'album.dart';

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
                    height: MediaQuery.of(context).size.height / 2,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(gradient: Palet.gradient),
                    child: Column(
                      children: [
                        Container(
                          padding:Palet.heightPadding,
                          decoration:
                              BoxDecoration(boxShadow: [Palet.shadowType]),
                          child: Image(
                            image: image,
                            width: MediaQuery.of(context).size.width / 1.6,
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
                                padding: Palet.MediumHeightPadding,
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.downloading_rounded,
                                      size: 40,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.favorite,
                                      color: Colors.green,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(DefaultKey.Listen),
                                    Spacer(),
                                    Image(
                                        image: AssetImage(ImageName.play),
                                        width: 70,
                                        height: 70),
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
                    padding: Palet.pagePadding,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AlbumDetail(image1: ImageName.image1, image2: ImageName.image6,),
                        AlbumDetail(image1: ImageName.image2, image2: ImageName.image7,),
                        AlbumDetail(image1: ImageName.image3, image2: ImageName.image8,),
                        AlbumDetail(image1: ImageName.image4, image2: ImageName.image9,),

                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
              child: SafeArea(
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return HomeView();
                }));
              },
              child: Container(
                padding: Palet.listPadding,
                child: const Icon(
                  Icons.arrow_back,
                  size: 30,
                ),
              ),
            ),
          ))
        ],
      ),
    );
  }
}

class AlbumDetail extends StatelessWidget {
  const AlbumDetail({
    super.key, required this.image1, required this.image2,
  });
  final String  image1;
  final String  image2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:Palet.heightPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Album(

            image:  AssetImage(image1),
            lable: DefaultKey.title7,
          ),
          SizedBox(width: 10,),
          Album(
            image:  AssetImage(image2),
            lable: DefaultKey.title7,
          ),
        ],
      ),
    );
  }
}
