import 'package:bookingadminsection/screens/Admin/add_movie.dart';
import 'package:bookingadminsection/screens/Admin/Manage_movies.dart';
import 'package:flutter/material.dart';
import 'package:bookingadminsection/widgets/rounder_button.dart';

class AdminHome extends StatefulWidget {
  static String id = 'AdminHome';

  @override
  _AdminHomeState createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
     body: Center(
       child: Padding(
         padding: EdgeInsets.symmetric(horizontal: 24.0),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.stretch,
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

             ),
             Roundedbuttons(
               onPressed: (){
                 Navigator.pushNamed(context, AddProduct.id);
               },
               coluer: Colors.white,
               title: 'Add movie',
             ),
             Roundedbuttons(
               onPressed: (){
                 Navigator.pushNamed(context, ManageProducts.id);

               },

               coluer: Colors.white,
               title: 'Edit movie',

             ),
//             Roundedbuttons(
//               onPressed: (){
//                 Navigator.pushNamed(context, OrdersScreen.id);
//               },
//               coluer: Colors.white,
//               title: 'view orders',
//
//             ),
           ],
         ),
       ),
     ),
    );
  }

//  void loadimage() async{
//    var imageId = await ImageDownloader.downloadImage(_url);
//    var path = await ImageDownloader.findPath(imageId);
//    File image = File(path);
//    setState(() {
//      _image = image;
//    });
//  }
}
