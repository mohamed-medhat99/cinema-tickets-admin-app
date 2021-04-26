import 'dart:io';
import 'package:bookingadminsection/models/movies.dart';
import 'package:bookingadminsection/widgets/Custome_Menu.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:path/path.dart' as p;
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:bookingadminsection/constants.dart';
import 'package:bookingadminsection/widgets/inputtext.dart';
import 'package:bookingadminsection/widgets/rounder_button.dart';
import 'package:image_picker/image_picker.dart';
import 'package:bookingadminsection/services/fire_store.dart';

class AddProduct extends StatefulWidget {
  static String id = 'AddProducts';


  @override
  _AddProductState createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  final nameHolder1= TextEditingController();
  final nameHolder2 = TextEditingController();
  final nameHolder3 = TextEditingController();
  final nameHolder4 = TextEditingController();
  final nameHolder5 = TextEditingController();
  final nameHolder6 = TextEditingController();
  int cameraCounter = 0 ;
  int GalleryCounter = 0 ;
  File _imagefromgallary;
  File _imageFromCamera;
  final _store = Store();
  String _name , _time , _description  ,  _url , _category , _rating , _year;
  bool c1 = false;
  bool c2 = false;
  bool c3 = false;
  bool c4 = false;
  bool c5 = false;
  bool c6 = false;
  bool c7 = false;
  bool c8 = false;
  bool c9 = false;
  bool c10 = false;
  bool c11 = false;
  bool c12 = false;
  bool c13 = false;
  bool c14 = false;
  bool c15 = false;
  bool c16 = false;
  bool c17 = false;
  bool c18 = false;
  bool c19 = false;
  bool c20 = false;
  bool c21 = false;
  bool c22 = false;
  bool c23 = false;
  bool c24 = false;
  bool c25 = false;
  bool c26 = false;
  bool c27 = false;
  bool c28 = false;
  bool c29 = false;
  bool c30 = false;
  bool c31 = false;
  bool c32 = false;
  bool c33 = false;
  bool c34 = false;
  bool c35 = false;
  bool c36 = false;
  bool c37 = false;
  bool c38 = false;
  bool c39 = false;
  bool c40 = false;
  bool c41 = false;
  bool c42 = false;
  bool c43 = false;
  bool c44 = false;
  bool c45 = false;
  bool c46 = false;
  bool c47 = false;

  final GlobalKey<FormState> _globalkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Form(
          key: _globalkey,
          child: ListView(
            children: <Widget>[
              SizedBox(
                width: double.infinity,
              ),
              Container(
                height: MediaQuery.of (context).size.height*0.3,
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Positioned(
                      bottom: 0,
                      child: Text('Booking',
                        style: TextStyle(
                          fontFamily: 'ArchitectsDaughter-Regular',
                          fontSize: 50.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height*.01,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTapUp: (details){
                      double dx = details.globalPosition.dx;
                      double dy = details.globalPosition.dy;
                      double dxx = MediaQuery.of(context).size.width- dx;
                      double dyy = MediaQuery.of(context).size.width- dy;
                      showMenu(
                        context: context,
                        position: RelativeRect.fromLTRB(dx, dy, dxx, dyy),
                        items:
                        [
                          mypopupitem(
                            child: Text('Camera'),
                            onclick: (){
                              PickImageFromCamera();
                              cameraCounter = 1;
                            },
                          ),
                          mypopupitem(
                            child: Text('Gallary'),
                            onclick: (){
                              PickImageFromGallary();
                              GalleryCounter = 1;
                            },
                          ),
                        ],
                      );
                    },
                    child:
                      Container(
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                          image:DecorationImage(
                            fit: BoxFit.fill,
                            image: _imagefromgallary==null ? NetworkImage('https://upload.wikimedia.org/wikipedia/commons/6/6c/Black_photo.jpg') : FileImage(_imagefromgallary),
                          ),
                        ),
                      ),
//                    CircleAvatar(
//                      radius: 50,
//                      backgroundImage: _imagefromgallary==null ? null : FileImage(_imagefromgallary),
//
//                    ),
                  ),
                  Icon(Icons.camera_alt),
                ],
              ),
              Center(
                child: Text(
                  'Add Movie image',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: height*.01,
              ),
              TextFields(
                controller: nameHolder1,
                hinttext: 'Movie name',
                OnClick: (value){
                  _name = value;
                },
              ),
              SizedBox(
                height: height*.01,
              ),
              TextFields(
                controller: nameHolder2,
                hinttext: 'Movie Time',
                OnClick: (value){
                  _time = value;
                },
              ),
              SizedBox(
                height: height*.01,
              ),
              TextFields(
                controller: nameHolder3,
                hinttext: 'Movie description',
              OnClick:  (value){
                  _description = value;
                },
              ),
              SizedBox(
                height: height*.01,
              ),
              TextFields(
                controller: nameHolder4,
                hinttext: 'category',
                OnClick: (value){
                  _category = value;
                },
              ),
              SizedBox(
                height: height*.01,
              ),
              TextFields(
                controller: nameHolder5,
                hinttext: 'rating',
                OnClick: (value){
                  _rating = value;
                },
              ),
              SizedBox(
                height: height*.01,
              ),
              TextFields(
                controller: nameHolder6,
                hinttext: 'year',
                OnClick: (value){
                  _year = value;
                },
              ),
              SizedBox(
                height: height*.01,
              ),
              SizedBox(
                height: height*.01,
              ),

              SizedBox(
                height: height*.01,
              ),
              Builder(
                builder: (context) => Roundedbuttons(title: 'upload data',coluer: Ktextfieldcolor,
                  onPressed: ()async{
//                    await uploadImageFromGallary(context);
//                    if(_globalkey.currentState.validate()){
//                      _globalkey.currentState.save();
//                      _store.addProduct(Movie(
//                        mName: _name,
//                        mtime: _rating,
//                        mDescription: _description,
//                        murl: _url,
//
//                      ));
//                    }
                    if(cameraCounter == 1 ){
                     await uploadImageFromCamera(context);
                     if(_globalkey.currentState.validate()){
                      _globalkey.currentState.save();
                      _store.addProduct(Movie(
                        mName: _name,
                        mtime: _time,
                        mDescription: _description,
                        murl: _url,
                        seatsnumber: 47,
                        mcategory: _category,
                        mrating: _rating,
                        myear: _year,
                        c1: c1,
                        c2: c2,
                        c3: c3,
                        c4: c4,
                        c5: c5,
                        c6: c6,
                        c7: c7,
                        c8: c8,
                        c9: c9,
                        c10: c10,
                        c11: c11,
                        c12: c12,
                        c13: c13,
                        c14: c14,
                        c15: c15,
                        c16: c16,
                        c17: c17,
                        c18: c18,
                        c19: c19,
                        c20: c20,
                        c21: c21,
                        c22: c22,
                        c23: c23,
                        c24: c24,
                        c25: c25,
                        c26: c26,
                        c27: c27,
                        c28: c28,
                        c29: c29,
                        c30: c30,
                        c31: c31,
                        c32: c32,
                        c33: c33,
                        c34: c34,
                        c35: c35,
                        c36: c36,
                        c37: c37,
                        c38: c38,
                        c39: c39,
                        c40: c40,
                        c41: c41,
                        c42: c42,
                        c43: c43,
                        c44: c44,
                        c45: c45,
                        c46: c46,
                        c47: c47,
                      )
                      );
                      await clearTextInput();
                    }
                    }else if (GalleryCounter == 1){
                       await uploadImageFromGallary(context);
                      if(_globalkey.currentState.validate()){
                        _globalkey.currentState.save();
                        _store.addProduct(Movie(
                          mName: _name,
                          mtime: _time,
                          mDescription: _description,
                          murl: _url,
                          seatsnumber: 47,
                          mcategory: _category,
                          mrating: _rating,
                          myear: _year,
                          c1: c1,
                          c2: c2,
                          c3: c3,
                          c4: c4,
                          c5: c5,
                          c6: c6,
                          c7: c7,
                          c8: c8,
                          c9: c9,
                          c10: c10,
                          c11: c11,
                          c12: c12,
                          c13: c13,
                          c14: c14,
                          c15: c15,
                          c16: c16,
                          c17: c17,
                          c18: c18,
                          c19: c19,
                          c20: c20,
                          c21: c21,
                          c22: c22,
                          c23: c23,
                          c24: c24,
                          c25: c25,
                          c26: c26,
                          c27: c27,
                          c28: c28,
                          c29: c29,
                          c30: c30,
                          c31: c31,
                          c32: c32,
                          c33: c33,
                          c34: c34,
                          c35: c35,
                          c36: c36,
                          c37: c37,
                          c38: c38,
                          c39: c39,
                          c40: c40,
                          c41: c41,
                          c42: c42,
                          c43: c43,
                          c44: c44,
                          c45: c45,
                          c46: c46,
                          c47: c47,


                        ));
                        await clearTextInput();
                      }
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void PickImageFromGallary() async{
     // ignore: deprecated_member_use
     var image = await ImagePicker.pickImage(source: ImageSource.gallery);
     setState(() {
       _imagefromgallary = image ;
     });
  }
  void PickImageFromCamera() async{
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _imagefromgallary = image;
    });
  }

 void uploadImageFromGallary( context) async{
    try{

    FirebaseStorage storage= FirebaseStorage(storageBucket: 'gs://movie-tickets-app-41f80.appspot.com');
    StorageReference ref = storage.ref().child(p.basename(_imagefromgallary.path));
    StorageUploadTask upload = ref.putFile(_imagefromgallary);
    StorageTaskSnapshot snapShot = await upload.onComplete;

    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text ('uploaded sucessfully'),
    ));

    String retrivedurl = await  snapShot.ref.getDownloadURL();


    setState(() {
      _url = retrivedurl;
      print('UB_url $_url');
    });
    } catch(ex){
      Scaffold.of(context).showSnackBar(SnackBar(
        content: Text (ex.message),
      ));
    }
  }

  void uploadImageFromCamera( context) async{
    try{

      FirebaseStorage storage= FirebaseStorage(storageBucket: 'gs://movie-tickets-app-41f80.appspot.com');
      StorageReference ref = storage.ref().child(p.basename(_imagefromgallary.path));
      StorageUploadTask upload = ref.putFile(_imagefromgallary);
      StorageTaskSnapshot snapShot = await upload.onComplete;

      Scaffold.of(context).showSnackBar(SnackBar(
        content: Text ('uploaded sucessfully'),
      ));

      String retrivedurl = await  snapShot.ref.getDownloadURL();


      setState(() {
        _url = retrivedurl;
        print('UB_url $_url');
      });
    } catch(ex){
      Scaffold.of(context).showSnackBar(SnackBar(
        content: Text (ex.message),
      ));
    }
  }


  clearTextInput(){

    nameHolder1.clear();
    nameHolder2.clear();
    nameHolder3.clear();
    nameHolder4.clear();
    nameHolder5.clear();
    nameHolder6.clear();

  }

}

