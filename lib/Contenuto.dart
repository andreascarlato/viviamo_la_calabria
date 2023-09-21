import 'package:flutter/material.dart';
import 'Cs.dart';
import 'Uici.dart';
import 'Orari.dart';
import 'MyHomePage.dart';
import 'IcSaic.dart';
import 'Mic.dart';

Widget Contenuto(String title, String imgPath, String description) {
  return Padding(
    padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
    child: Container(
      height: 150.0,
      width: double.infinity,
      color: Colors.white,

      child: Row(
        children: <Widget>[
          Container(
            width: 140.0,
            height: 150.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(imgPath), fit: BoxFit.cover)),
          ),
          SizedBox(width: 4.0),
          Column(

            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 45.0),
/*                    Material(
                      elevation: isFavorite ? 0.0 : 2.0,
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: isFavorite
                                ? Colors.grey.withOpacity(0.2)
                                : Colors.white),
                        child: Center(
                          child: isFavorite
                              ? Icon(Icons.favorite_border)
                              : Icon(Icons.favorite, color: Colors.red),
                        ),
                      ),
                    )*/
                ],
              ),
              SizedBox(height: 5.0),
              Container(
                width: 185.0,
                child: Text(
                  description,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontFamily: 'Quicksand',
                      color: Colors.grey,
                      fontSize: 12.0),
                ),
              ),
              SizedBox(height: 5.0),
              Row(
                children: <Widget>[
                  SizedBox(width: 35.0),
/*                    Container(
                      height: 40.0,
                      width: 50.0,
                      color: Color(getColorHexFromStr('#F9C335')),
                      child: Center(
                        child: Text(
                          '\$248',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),*/

                  Container(
                    height: 30.0,
                    width: 80.0,
                    //color: Color(getColorHexFromStr('#FEDD59')),
                    child: Center(/*
                      child: ElevatedButton(
                        child: const Text('Vai'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Orari()),
                          );
                        },
                      ),*/


                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    ),
  );
}