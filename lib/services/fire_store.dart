//import 'package:bookingadminsection/models/orders.dart';
import 'package:bookingadminsection/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:bookingadminsection/models/movies.dart';
import 'package:flutter/foundation.dart';

class Store {

  final Firestore _firestore = Firestore.instance;

  addProduct(Movie movie) async {
    await _firestore.collection(KmoviesCollection).add({

      KmovieName: movie.mName,
      Kmovietime: movie.mtime,
      KmovieDescription: movie.mDescription,
      Kmovieimage: movie.murl,
      Kmovieseats: movie.seatsnumber,
      Kmoviecategory:movie.mcategory,
      Kmovieyear:movie.myear,
      Kmovierating:movie.mrating,
      Kc1:movie.c1,
      Kc2: movie.c2,
      Kc3 :movie.c3,
       Kc4 : movie.c4,
      Kc5 :movie.c5,
      Kc6 :movie.c6,
      Kc7 :movie.c7,
     Kc8 :movie.c8,
    Kc9 :movie.c9,
     Kc10:movie.c10,
       Kc11:movie.c11,
      Kc12:movie.c12,
      Kc13 :movie.c13,
       Kc14 :movie.c14,
      Kc15 :movie.c15,
     Kc16 :movie.c16,
       Kc17 :movie.c17,
      Kc18 :movie.c18,
       Kc19 :movie.c19,
       Kc20:movie.c20,
     Kc21 :movie.c21,
      Kc22 :movie.c22,
       Kc23 :movie.c23,
       Kc24 :movie.c24,
      Kc25 :movie.c25,
       Kc26 :movie.c26,
       Kc27 :movie.c27,
       Kc28 :movie.c28,
       Kc29 :movie.c29,
      Kc30 :movie.c30,
      Kc31 :movie.c31,
       Kc32 :movie.c32,
       Kc33:movie.c33,
       Kc34 :movie.c34,
       Kc35 :movie.c35,
       Kc36:movie.c36,
      Kc37:movie.c37,
       Kc38 :movie.c38,
       Kc39 :movie.c39,
       Kc40 :movie.c40,
       Kc41 :movie.c41,
     Kc42 :movie.c42,
      Kc43 :movie.c43,
      Kc44:movie.c44,
     Kc45 :movie.c45,
       Kc46 :movie.c46,
       Kc47 :movie.c47,



    });
  }

  Stream<QuerySnapshot> loadProducts() {
    return _firestore.collection(KmoviesCollection).snapshots();
  }

  deleteMovie(documentId) {
    _firestore.collection(KmoviesCollection).document(documentId).delete();
  }

  updateproducts(data, documentID) {
    _firestore.collection(KmoviesCollection).document(documentID).updateData(
        data);
  }

//  addOrderss(data, List<Product> products ) {
//    var documentref = _firestore.collection(Korders).document();
//    documentref.setData(data);
//    for (var product in products) {
//      documentref.collection(KorderDetails).document().setData(
//          {
//
//            KproductName: product.pName,
//            KproductPrice: product.pPrice,
//            KproductQuantity: product.pquantity,
//            Kproductimage: product.purl,
//            KproductCategory : product.pCategory,
//
//          });
//    }
//  }

//  Stream<QuerySnapshot> loadOrders() {
//    return _firestore.collection(Korders).snapshots();
//  }
//  Stream<QuerySnapshot> loadOrdersDetails(documentid) {
//    return _firestore.collection(Korders).document(documentid).collection(KorderDetails).snapshots();
//  }
}
