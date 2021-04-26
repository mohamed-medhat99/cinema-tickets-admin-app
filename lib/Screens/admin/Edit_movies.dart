import 'package:bookingadminsection/models/movies.dart';
import 'package:flutter/material.dart';
import 'package:bookingadminsection/constants.dart';
import 'package:bookingadminsection/Widgets/inputtext.dart';
import 'package:bookingadminsection/widgets/rounder_button.dart';
import 'package:bookingadminsection/services/fire_store.dart';
class EditProducts extends StatefulWidget {
  static String id = 'Editproduct';

  @override
  _EditProductsState createState() => _EditProductsState();
}

class _EditProductsState extends State<EditProducts> {

  final _store = Store();

  String _name , _rating , _description , _time ;


  final GlobalKey<FormState> _globalkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;

 Movie movies = ModalRoute.of(context).settings.arguments;

    return  Scaffold(
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
              TextFields(
                hinttext: 'movie name',
                OnClick: (value){
                  _name = value;
                },
              ),
              SizedBox(
                height: height*.01,
              ),
              TextFields(
                hinttext: 'movie time',
                OnClick: (value){
                  _rating = value;
                },
              ),
              SizedBox(
                height: height*.01,
              ),
              TextFields(
                hinttext: 'movie description',
                OnClick: (value){
                  _description = value;
                },
              ),
              SizedBox(
                height: height*.01,
              ),
              TextFields(
                hinttext: 'movie category',
                OnClick: (value){
                  _time = value;
                },
              ),
              SizedBox(
                height: height*.01,
              ),
              TextFields(
                hinttext: 'movie rating',
                OnClick: (value){
                  _time = value;
                },
              ),
              SizedBox(
                height: height*.01,
              ),
              TextFields(
                hinttext: 'movie year',
                OnClick: (value){
                  _time = value;
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
              SizedBox(
                height: height*.01,
              ),
              Builder(
                builder: (context) => Roundedbuttons(title: 'Edit product',coluer: Ktextfieldcolor,
                  onPressed: (){
                  try{
                    if(_globalkey.currentState.validate()){
                      _globalkey.currentState.save();
                      _store.updateproducts((
                     {
                       KmovieName: _name,
                       Kmovierating: _rating,
                       Kmovietime: _time,
                       KmovieDescription: _description,
                     }
                      ), movies.documentid);

                      Scaffold.of(context).showSnackBar(SnackBar(
                        content: Text('Uploaded Succeffully'),
                      ));

                    }
                  }catch(es){
                    Scaffold.of(context).showSnackBar(SnackBar(
                      content: Text(es.message),
                    ));
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

}
