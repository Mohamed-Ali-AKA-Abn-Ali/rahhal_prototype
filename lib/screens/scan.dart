import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ra7al/screens/details_tower.dart';
import 'package:ra7al/screens/details_tut.dart';
import 'package:ra7al/screens/vid_pyramids.dart';
import 'package:tflite_v2/tflite_v2.dart';

import 'details_screen.dart';
// import 'package:thebrioflashynavbar/thebrioflashynavbar.dart';
class Scanner extends StatefulWidget {
  const Scanner({super.key});

  @override
  State<Scanner> createState() => _ScannerState();
}

class _ScannerState extends State<Scanner> {

  final ImagePicker _picker = ImagePicker();
  XFile? _image;
  File? file;
  var _recognitions;
  var v = "    ";
  late List _output;
  String? num;
  String texture= "Waiting for detection";
  @override
  void initState() {
    super.initState();
    loadmodel().then((value) {
      setState(() {});
    });
  }

  loadmodel() async {
    await Tflite.loadModel(
      model: 'assets/tflite/model_unquant.tflite',
      labels: 'assets/tflite/labels.txt',
    );
    print('Loadeddddddddddddd');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    Tflite.close();
    super.dispose();
  }
  _pickImage() async {
    try {
      final XFile? image = await _picker.pickImage(source: ImageSource.camera);
      setState(() {
        _image = image;
        file = File(image!.path);
      });
      detectimage(file!);
    } catch (e) {
      print('Error picking image: $e');
    }
  }
  _pickImageGallary() async {
    try {
      final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
      setState(() {
        _image = image;
        file = File(image!.path);
      });
      detectimage(file!);
    } catch (e) {
      print('Error picking image: $e');
    }
  }
  Future detectimage(File image) async {
    int startTime = new DateTime.now().millisecondsSinceEpoch;
    var recognitions = await Tflite.runModelOnImage(
      path: image.path,
      numResults: 6,
      threshold: 0.05,
      imageMean: 127.5,
      imageStd: 127.5,
    );
    setState(() {

      _recognitions = recognitions;
      v = recognitions.toString();
      texture= "Detected";
      num=v[51];
      // dataList = List<Map<String, dynamic>>.from(jsonDecode(v));
    });
    print("//////////////////////////////////////////////////");
    print(_recognitions);
    // print(dataList);
    print("//////////////////////////////////////////////////");
    int endTime = new DateTime.now().millisecondsSinceEpoch;
    print("Inference took ${endTime - startTime}ms");

  }



  gotonext(var num){
    if(num=='P'){
      Navigator.push(context as BuildContext,MaterialPageRoute(
        builder: (BuildContext context){
          return Details();
        },
      ),);
    }else if(num=='C'){
      Navigator.push(context as BuildContext,MaterialPageRoute(
        builder: (BuildContext context){
          return Details_tower();
        },
      ),);
    }else if(num=='T'){
      Navigator.push(context as BuildContext,MaterialPageRoute(
        builder: (BuildContext context){
          return Details_tut();
        },
      ),);
    }
  }
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
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(

              width: double.infinity,
              child: Image.asset('assets/images/scan.png',
              fit: BoxFit.cover,),
              decoration: BoxDecoration(

              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              print('haha');
              _pickImage();
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(
                    color: Colors.orangeAccent,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(child: Text('Open Camera',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.orangeAccent,

                  ),)),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              print('haha');
              _pickImageGallary();
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(
                    color: Colors.orangeAccent,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(child: Text('Select from Gallary',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.orangeAccent,

                  ),)),
              ),
            ),
          ),
          Center(
            child: Text(texture,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),),
          ),
          GestureDetector(
            onTap: (){
              gotonext(num);



            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(
                    color: Colors.orangeAccent,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(child: Text('Go To Details',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.orangeAccent,

                  ),)),
              ),
            ),
          ),
        ],
      ),

    );
  }
}
