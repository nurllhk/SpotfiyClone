import 'package:flutter/material.dart';
import 'package:spotfiy/classes/palet.dart';
import 'package:spotfiy/widgets/view_album.dart';


class Album extends StatelessWidget {
  final ImageProvider image;
  final String lable;

  const Album({
    required this.image,
    required this.lable,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
     onTap: (){
       Navigator.of(context).push(MaterialPageRoute(builder: (context){
         return ViewAlbum(image: image, text: lable,);
       }));
     },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Row(
              children: [
                Padding(
                  padding:
                  const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                  child: Image(
                    image: image,
                    width: 140,
                    height: 140,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: Palet.heightPadding,
            child: Text(lable,style: Theme.of(context).textTheme.labelLarge,),
          ),
        ],
      ),
    );
  }
}