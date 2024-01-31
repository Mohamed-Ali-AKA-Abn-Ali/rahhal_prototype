import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(40, 40, 40, 100),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(

            backgroundColor: Colors.transparent,

            elevation: 0,
            floating: true,
            pinned: true,
            expandedHeight: 300,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(

              background: ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomRight:Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                ),
                child: Image.network('https://www.planetware.com/photos-large/EGY/egypt-cairo-pyramids-of-giza-and%20camels-2.jpg',
                fit: BoxFit.cover,

                ),
              ),

            ),

    ),
      ],
    ),
    );
  }
}
