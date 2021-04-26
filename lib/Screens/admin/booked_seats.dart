import 'package:bookingadminsection/models/movies.dart';
import 'package:flutter/material.dart';

import 'cinema_seat.dart';

class BookedSeats extends StatefulWidget {
  static String id = 'BokkedSeats';
  @override
  _BookedSeatsState createState() => _BookedSeatsState();
}

class _BookedSeatsState extends State<BookedSeats> {
  @override
  Widget build(BuildContext context) {
    Movie movie = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Padding(
          padding:  EdgeInsets.only(left:90),
          child: Text(movie.mName ,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          StreamBuilder(
            builder: (context , index)=> Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                // A
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CienmaSeat(
                    seatName: 'c1',
                    isReserved: movie.c1,
                    isSelected: false,
                  ),

                  CienmaSeat(
                    seatName: 'c2',
                    isReserved: movie.c2,
                    isSelected: false,
                  ),
                  CienmaSeat(
                    seatName: 'c3',
                    isReserved: movie.c3,
                    isSelected: false,
                  ),
                  SizedBox(
                    width:
                    (MediaQuery.of(context).size.width / 20) *
                        2,
                  ),
                  CienmaSeat(
                    seatName: 'c4',
                    isReserved: movie.c4,
                    isSelected: false,
                  ),
                  CienmaSeat(
                    seatName: 'c5',
                    isReserved: movie.c5,
                    isSelected: false,
                  ),
                  SizedBox(
                    width: (MediaQuery.of(context).size.width / 20),
                  ),
                ],
              ),
            ),
          ),
          // Second Row
          Row(
            //B
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CienmaSeat(
                seatName: 'c6',
                isReserved: movie.c6,
                isSelected: false,
              ),
              CienmaSeat(
                seatName: 'c7',
                isReserved: movie.c7,
                isSelected: false,
              ),
              CienmaSeat(
                seatName: 'c8',
                isReserved: movie.c8,
                isSelected: false,
              ),
              CienmaSeat(
                seatName: 'c9',
                isReserved: movie.c9,
                isSelected: false,
              ),
              SizedBox(
                width:
                (MediaQuery.of(context).size.width / 20) * 2,
              ),
              CienmaSeat(
                seatName: 'c10',
                isReserved: movie.c10,
                isSelected: false,
              ),
              CienmaSeat(
                seatName: 'c11',
                isReserved: movie.c11,
                isSelected: false,
              ),
              CienmaSeat(
                seatName: 'c12',
                isReserved: movie.c12,
                isSelected: false,
              ),
            ],
          ),
          // Third  Row
          Row(
            //c
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CienmaSeat(
                seatName: 'c13',
                isReserved: movie.c13,
                isSelected: false,
              ),
              CienmaSeat(
                seatName: 'c14',
                isReserved: movie.c14,
                isSelected: false,
              ),
              CienmaSeat(
                seatName: 'c15',
                isReserved: movie.c15,
                isSelected: false,
              ),
              CienmaSeat(
                seatName: 'c16',
                isReserved: movie.c16,
                isSelected: false,
              ),
              SizedBox(
                width:
                (MediaQuery.of(context).size.width / 20) * 2,
              ),
              CienmaSeat(
                seatName: 'c17',
                isReserved: movie.c17,
                isSelected: false,
              ),
              CienmaSeat(
                seatName: 'c18',
                isReserved: movie.c18,
                isSelected: false,
              ),
              CienmaSeat(
                seatName: 'c19',
                isReserved: movie.c19,
                isSelected: false,
              ),
            ],
          ),
          // 4TH Row
          Row(
            //d
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CienmaSeat(
                seatName: 'c20',
                isReserved: movie.c20,
                isSelected: false,
              ),
              GestureDetector(
                onTap: (){},
                child: CienmaSeat(
                  seatName: 'c21',
                  isReserved: movie.c21,
                  isSelected: false,
                ),
              ),
              CienmaSeat(
                seatName: 'c22',
                isReserved: movie.c22,
                isSelected: false,
              ),
              CienmaSeat(
                seatName: 'c23',
                isReserved: movie.c23,
                isSelected: false,
              ),
              SizedBox(
                width:
                (MediaQuery.of(context).size.width / 20) * 2,
              ),
              CienmaSeat(
                seatName: 'c24',
                isReserved: movie.c24,
                isSelected: false,
              ),
              CienmaSeat(
                seatName: 'c25',
                isReserved: movie.c25,
                isSelected: false,
              ),
              CienmaSeat(
                seatName: 'c26',
                isReserved: movie.c26,
                isSelected: false,
              ),
            ],
          ),
          // 5TH Row
          Row(
            //e
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CienmaSeat(
                seatName: 'c27',
                isReserved: movie.c27,
                isSelected: false,
              ),
              CienmaSeat(
                seatName: 'c28',
                isReserved: movie.c28,
                isSelected: false,
              ),
              CienmaSeat(
                seatName: 'c29',
                isReserved: movie.c29,
                isSelected: false,
              ),
              CienmaSeat(
                seatName: 'c30',
                isReserved: movie.c30,
                isSelected: false,
              ),
              SizedBox(
                width:
                (MediaQuery.of(context).size.width / 20) * 2,
              ),
              CienmaSeat(
                seatName: 'c31',
                isReserved: movie.c31,
                isSelected: false,
              ),
              CienmaSeat(
                seatName: 'c32',
                isReserved: movie.c32,
                isSelected: false,
              ),
              CienmaSeat(
                seatName: 'c33',
                isReserved: movie.c33,
                isSelected: false,
              ),
            ],
          ),
          // 6TH Row
          Row(
            //f
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CienmaSeat(
                seatName: 'c34',
                isReserved: movie.c34,
                isSelected: false,
              ),
              CienmaSeat(
                seatName: 'c35',
                isReserved: movie.c35,
                isSelected: false,
              ),
              CienmaSeat(
                seatName: 'c36',
                isReserved: movie.c36,
                isSelected: false,
              ),
              CienmaSeat(
                seatName: 'c37',
                isReserved: movie.c37,
                isSelected: false,
              ),
              SizedBox(
                width:
                (MediaQuery.of(context).size.width / 20) * 2,
              ),
              CienmaSeat(
                seatName: 'c38',
                isReserved: movie.c38,
                isSelected: false,
              ),
              CienmaSeat(
                seatName: 'c39',
                isReserved: movie.c39,
                isSelected: false,
              ),
              CienmaSeat(
                seatName: 'c40',
                isReserved: movie.c40,
                isSelected: false,
              ),
            ],
          ),
          // final Row
          Row(
            //g
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: (MediaQuery.of(context).size.width / 20),
              ),
              CienmaSeat(
                seatName: 'c41',
                isReserved: movie.c41,
                isSelected: false,
              ),
              CienmaSeat(
                seatName: 'c42',
                isReserved: movie.c42,
                isSelected: false,
              ),
              CienmaSeat(
                seatName: 'c43',
                isReserved: movie.c43,
                isSelected: false,
              ),
              CienmaSeat(
                seatName: 'c44',
                isReserved: movie.c44,
                isSelected: false,
              ),
              SizedBox(
                width:
                (MediaQuery.of(context).size.width / 20) * 2,
              ),
              CienmaSeat(
                seatName: 'c45',
                isReserved: movie.c45,
                isSelected: false,
              ),
              CienmaSeat(
                seatName: 'c46',
                isReserved: movie.c46,
                isSelected: false,
              ),
              CienmaSeat(
                seatName: 'c47',
                isReserved: movie.c47,
                isSelected: false,
              ),
              SizedBox(
                width: (MediaQuery.of(context).size.width / 20),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
