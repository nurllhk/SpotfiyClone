import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .5,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.white, Colors.black.withOpacity(0)])),
          ),
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
                          style: Theme.of(context).textTheme.headlineSmall),
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
          SafeArea(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(vertical: 60),

              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Album(image: const AssetImage('images/1.png'), lable: 'Pop Mode',),
                  Album(image: const AssetImage('images/2.png'), lable: 'Motivation Mix',),
                  Album(image: const AssetImage('images/3.png'), lable: 'Top 100',),
                  Album(image: const AssetImage('images/like.png'), lable: 'Liked',),
                  Album(image: const AssetImage('images/4.png'), lable: 'Power play',),
                  Album(image: const AssetImage('images/5.png'), lable: 'Top Podcast',),
                  Album(image: const AssetImage('images/6.png'), lable: 'Learn Song',),


                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Album extends StatelessWidget {
  final ImageProvider image;
  final String lable;
   Album({
     required this.image,
     required this.lable,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          child: Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0,horizontal: 10),
                child: Image(image: image,width: 120,height: 120,fit: BoxFit.cover,),
              ),
            ],
          ),
        ),
         Text(lable),
      ],
    );
  }
}
