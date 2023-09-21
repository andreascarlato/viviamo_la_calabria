import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:async';
import 'MyHomePage.dart';
import 'package:url_launcher/url_launcher.dart';



class Orari extends StatelessWidget {
  var msg;
  //const Orari({super.key});
  Orari(var ciao){
    this.msg=ciao;
  }


  @override
  Widget build (BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title: const Text('Orari di apertura'),
      ),
      body: Center(
       /* child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          //child: const Text('back'),
        ),*/

          child: RichText(

            // Controls visual overflow
            overflow: TextOverflow.clip,

            // Controls how the text should be aligned horizontally
            textAlign: TextAlign.left,

            // Control the text direction
            textDirection: TextDirection.rtl,

            // Whether the text should break at soft line breaks
            softWrap: true,

            // Maximum number of lines for the text to span
            //maxLines: 10,
            selectionColor: Colors.red,
            // The number of font pixels for each logical pixel
            textScaleFactor: 1.2,
            text: TextSpan(
              style: TextStyle(
                color: Colors.black,
                backgroundColor: Colors.white,
                //decoration: TextDecoration.underline,
                decorationColor: Colors.red,
                //decorationStyle: TextDecorationStyle.wavy,

              ),

              children: const <TextSpan>[
                TextSpan(
                    text: 'Le biblioteche del Sistema Bibliotecario d\'Ateneo continuano a garantire il servizio di apertura alla comunità universitaria secondo il seguente orario\n', style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black)
                ),
                TextSpan(
                    text: '\nDa lunedì a giovedì\n h 9,00-20,15\n\nVenerdì\n h 9,00-17,00\n\n', style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black)
                ),
                TextSpan(
                    text: 'E\' stata inoltre ripristinata la modalità self-service nelle sale di lettura.\n', style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black)
                ),
                 //recognizer: new TapGestureRecognizer()
                    //text: 'Da lunedì a giovedì h 9,00-20,15', style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black)),
              ],


            ),
          ),

      ),
      backgroundColor: Colors.white,
    );
  }
}