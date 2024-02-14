import 'package:flutter/material.dart';
import 'package:ra7al/screens/pyramids3d_model.dart';
import 'package:ra7al/screens/vid_pyramids.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(40, 40, 40, 100),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(

            backgroundColor: Color.fromRGBO(40, 40, 40, 100),
            elevation: 0,
            floating: false,
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
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Text('Pyramids',
                style: TextStyle(color: Colors.orangeAccent,
                fontSize: 40,
                ),),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Text('The Giza pyramid complex (also called the Giza necropolis) in Egypt is home to the Great Pyramid, the Pyramid of Khafre, and the Pyramid of Menkaure, along with their associated pyramid complexes and the Great Sphinx. All were built during the Fourth Dynasty of the Old Kingdom of ancient Egypt, between c. 2600 – c. 2500 BC. The site also includes several temples, cemeteries, and the remains of a workers village.The site is at the edge of the Western Desert, approximately 9 km (5.6 mi) west of the Nile River in the city of Giza, and about 13 km (8.1 mi) southwest of the city centre of Cairo. It forms the northernmost part of the 16,000 ha (160 km2; 62 sq mi) Pyramid Fields of the Memphis and its Necropolis UNESCO World Heritage Site, inscribed in 1979.The pyramid fields include the Abusir, Saqqara, and Dahshur pyramid complexes, which were all built in the vicinity of Egypts ancient capital of Memphis. Further Old Kingdom pyramid fields were located at the sites Abu Rawash, Zawyet El Aryan, and Meidum.The Great Pyramid and the Pyramid of Khafre are the largest pyramids built in ancient Egypt, and they have historically been common as emblems of Ancient Egypt in the Western imagination.They were popularised in Hellenistic times, when the Great Pyramid was listed by Antipater of Sidon as one of the Seven Wonders of the World. It is by far the oldest of the Ancient Wonders and the only one still in existence.',
                style: TextStyle(color: Colors.white,
                  fontSize: 18,
                ),),
            ),
          ),

          SliverToBoxAdapter(
            child: GestureDetector(
              onTap: (){
                Navigator.push(context as BuildContext,MaterialPageRoute(
                  builder: (BuildContext context){
                    return VidPyramids();
                  },
                ),);
              },

              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(

                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(child: Text('Use Rahhal',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),)),

                ),
                ),
            ),
          ),
          SliverToBoxAdapter(
            child: GestureDetector(
              onTap: (){
                Navigator.push(context as BuildContext,MaterialPageRoute(
                  builder: (BuildContext context){
                    return PyramidsModel();
                  },
                ),);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(

                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(child: Text('Show 3D Model',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                    ),)),

                ),
              ),
            ),
          ),

      ],
    ),
    );
  }
}
