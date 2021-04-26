import 'package:flutter/material.dart';
import 'package:bookingadminsection/Screens/admin/AdminHome.dart';
import 'package:bookingadminsection/Screens/admin/add_movie.dart';
import 'package:bookingadminsection/Screens/admin/Manage_movies.dart';
import 'package:bookingadminsection/Screens/admin/Edit_movies.dart';
import 'package:bookingadminsection/Screens/admin/booked_seats.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Booking back Office'),
        ),
        body: Center(),
      ),
      initialRoute: AdminHome.id,
      routes: {
        AdminHome.id :(context)=>AdminHome(),
        AddProduct.id : (context)=>AddProduct(),
        ManageProducts.id : (context)=>ManageProducts(),
        EditProducts.id : (context)=>EditProducts(),
        BookedSeats.id : (context)=>BookedSeats(),
      },
    );
  }
}

//class Home extends StatefulWidget {
//  @override
//  _HomeState createState() => _HomeState();
//}
//
//class _HomeState extends State<Home> {
//  @override
//  Widget build(BuildContext context) {
//    return AdminHome();
//  }
//}
