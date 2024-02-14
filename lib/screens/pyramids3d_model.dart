import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:babylonjs_viewer/babylonjs_viewer.dart';
class PyramidsModel extends StatefulWidget {
  const PyramidsModel({super.key});

  @override
  State<PyramidsModel> createState() => _PyramidsModelState();
}

class _PyramidsModelState extends State<PyramidsModel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(40, 40, 40, 100),
      appBar:AppBar(
        centerTitle: true,
        elevation:0,
        backgroundColor: Colors.transparent,
        title: Container(
          decoration: BoxDecoration(
            color: Colors.transparent,

          ),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/horas.png',width: 40,height: 40,),
              Text('R A H H A L',
                style: TextStyle(
                  fontSize: 40,
                  fontFamily:'raleway',
                  color: Colors.white,

                ),),
            ],
          ),
          // width: 80,
          // height: 80,
        ),

      ) ,
      body:BabylonJSViewer(
        src: 'assets/models/pyramids3.glb',
      ),
    );
  }
}
