import 'package:flutter/material.dart';
import 'package:viviAmo_la_calabria/Mic.dart';
import 'MyHomePage.dart';
import 'Orari.dart';
import 'Uici.dart';
import 'Cs.dart';
import 'IcSaic.dart';
import 'Mic.dart';
import 'package:url_launcher/url_launcher.dart';


class MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  int getColorHexFromStr(String colorStr) {
    colorStr = "FF" + colorStr;
    colorStr = colorStr.replaceAll("#", "");
    int val = 0;
    int len = colorStr.length;
    for (int i = 0; i < len; i++) {
      int hexDigit = colorStr.codeUnitAt(i);
      if (hexDigit >= 48 && hexDigit <= 57) {
        val += (hexDigit - 48) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 65 && hexDigit <= 70) {
        // A..F
        val += (hexDigit - 55) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 97 && hexDigit <= 102) {
        // a..f
        val += (hexDigit - 87) * (1 << (4 * (len - 1 - i)));
      } else {
        throw new FormatException("An error occurred when converting a color");
      }
    }
    return val;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(

        children: <Widget>[

          Column(

            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 250.0,
                    width: double.infinity,
                    color: Color(getColorHexFromStr('#FDD148')),
                  ),
                  Positioned(
                    bottom: 50.0,
                    right: 100.0,
                    child: Container(
                      height: 400.0,
                      width: 400.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(150.0),
                          color: Color(getColorHexFromStr('#FEE16D'))
                              .withOpacity(0.4)),
                    ),
                  ),
                  Positioned(
                    bottom: 100.0,
                    left: 150.0,
                    child: Container(
                        height: 300.0,
                        width: 300.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(150.0),
                            color: Color(getColorHexFromStr('#FEE16D'))
                                .withOpacity(0.5))),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 15.0),
                      Row(
                        children: <Widget>[
                          SizedBox(width: 15.0),
                          Container(
                            alignment: Alignment.topLeft,
                            height: 80.0,
                            width: 370.0,
                            decoration: BoxDecoration(
                                //borderRadius: BorderRadius.circular(25.0),
                                /*border: Border.all(
                                    color: Colors.white,
                                    style: BorderStyle.solid,
                                    width: 2.0),*/
                                image: DecorationImage(
                                    image: AssetImage('assets/logo_sba_t.png'))),
                          ),
                         /* SizedBox(
                              width: MediaQuery.of(context).size.width - 120.0),
                          Container(
                            alignment: Alignment.topRight,
                            child: IconButton(
                              icon: Icon(Icons.menu),
                              onPressed: () {},
                              color: Colors.white,
                              iconSize: 30.0,
                            ),
                          ),
                          SizedBox(height: 15.0),*/
                        ],
                      ),
                      SizedBox(height: 50.0),
                      Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Text(
                          'ViviAMO la Calabria',
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 15.0),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Text(
                          'dalla conoscenza all\'esperienza',
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 23.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 25.0),
                      Padding(
                        padding: EdgeInsets.only(left: 15.0, right: 15.0),
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(5.0),
                          /*child: TextFormField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: Icon(Icons.search,
                                      color:
                                      Color(getColorHexFromStr('#FEDF62')),
                                      size: 30.0),
                                  contentPadding:
                                  EdgeInsets.only(left: 15.0, top: 15.0),
                                  hintText: 'Search',
                                  hintStyle: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'Quicksand'))),*/
                        ),
                      ),
                      SizedBox(height: 10.0)
                    ],
                  )
                ],
              ),
              SizedBox(height: 10.0),
              Stack(
                children: <Widget>[
                  SizedBox(height: 10.0),
                  Material(
                      elevation: 1.0,
                      child: Container(height: 75.0, color: Colors.white)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        height: 75.0,
                        width: MediaQuery.of(context).size.width / 5,
                        child: Column(
                          children: <Widget>[
                            Container(
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => MyHomePage()),
                                  );
                                  //MaterialPageRoute(builder: (context) => const SecondRoute());
                                }, // Image tapped
                                //splashColor: Colors.white10, // Splash color over image
                                //child: Ink.image(
                                //  fit: BoxFit.cover, // Fixes border issues
                                //  height: 50,
                                //  image: AssetImage(
                                //      'assets/uici.gif',
                                //  ),
                                //),
                              ),
                              height: 50.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/logo_unical.jpg'))),
                            ),
                            Text(
                              'Biblioteche',
                              style: TextStyle(fontFamily: 'Quicksand'),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 75.0,
                        width: MediaQuery.of(context).size.width / 5,
                        child: Column(

                          children: <Widget>[
                            Container(
                              child: InkWell(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => IcSaic()),);
                      //MaterialPageRoute(builder: (context) => const SecondRoute());
                                  },
                              ),// Image tapped
                              height: 50.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                      AssetImage('assets/icsaic.png'))),
                            ),
                            Text(
                              'ICSAIC',
                              style: TextStyle(fontFamily: 'Quicksand'),
                            ),


                          ],
                        ),
                      ),
                      Container(
                        height: 75.0,
                        width: MediaQuery.of(context).size.width / 5,
                        child: Column(
                          children: <Widget>[
                            Container(
                              child: InkWell(
                                onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => Cs()),);
                      //MaterialPageRoute(builder: (context) => const SecondRoute());
                                    },
                              ),
                              height: 50.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/stemma_cosenza.png'))),
                            ),
                            Text(
                              'Cosenza',
                              style: TextStyle(fontFamily: 'Quicksand'),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 75.0,
                        width: MediaQuery.of(context).size.width / 5,
                        child: Column(
                          children: <Widget>[
                            Container(
                                child: InkWell(
                                    onTap: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => Mic()),);
                      //MaterialPageRoute(builder: (context) => const SecondRoute());
                                    },
                                ),
                              height: 50.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                      AssetImage('assets/mic.png'))),
                            ),
                            Text(
                              'Musei',
                              style: TextStyle(fontFamily: 'Quicksand'),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 75.0,
                        width: MediaQuery.of(context).size.width / 5,
                        child: Column(
                          children: <Widget>[

                            Container(
                              child: InkWell(
                                onTap: () {
                                  print('ciaoooooooooooo');
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Uici()),
                                  );
                                  //MaterialPageRoute(builder: (context) => const SecondRoute());
                                }, // Image tapped
                                //splashColor: Colors.white10, // Splash color over image
                                //child: Ink.image(
                                //  fit: BoxFit.cover, // Fixes border issues
                                //  height: 50,
                                //  image: AssetImage(
                                //      'assets/uici.gif',
                                //  ),
                                //),
                              ),
                              height: 50.0,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                      AssetImage('assets/uici.gif'))),
                            ),

                            Text(
                              'U.I.C.I.',
                              style: TextStyle(fontFamily: 'Quicksand'),
                            )
                          ],
                        ),
                      ),



                    ],
                  )
                ],
              ),
              itemCard('SBA', 'assets/sba.jpg', 'Il sistema bibliotecario più grande del Mezzogiorno','https://sba.unical.it/home'),
              itemCard('Catalogo Online', 'assets/catalogo.png', 'OPAC - Sistema Bibliotecario di Ateneo','http://libcal03.biblioteche.unical.it:8991/F'),
              itemCard('Arte e paesaggio', 'assets/movio.png','a Cosenza e Scolacium','https://unical-arteepaesaggioacosenzaeascolacium.movio.it/it/1/home'),
              itemCard('Tra realizzato e immaginato', 'assets/movio.png','La gestione dell\'acqua in Calabria, passato e futuro anteriore','https://unical-lagestionedellacquaincalabria.movio.it/it/1/home'),
              itemCard('Guerra e pace', 'assets/movio.png','Memorie periferiche fra le pieghe del secondo conflitto mondiale.','https://unical-guerraepace.movio.it/it/1/home'),
              itemCard('Contatti', 'assets/orari.png','Riferimenti e contatti','https://sba.unical.it/contatti'),
            ],
          )
        ],
      ),


    bottomNavigationBar: Material(
          color: Colors.white,
    /*child: TabBar(
          controller: controller,
          indicatorColor: Colors.yellow,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.event_seat, color: Colors.yellow)),
            Tab(icon: Icon(Icons.timer, color: Colors.grey)),
            Tab(icon: Icon(Icons.shopping_cart, color: Colors.grey)),
            Tab(icon: Icon(Icons.person_outline, color: Colors.grey))
          ],
        ),*/
          child: Text ('Intervento a valere sul POR Calabria FESR-FSE 2014/2020 - ASS VI - AZIONE 6.8.3, approvato con DD n. 2671 del 24/02/2023 - ViviAMO la Calabria: dalla conoscenza all\'esperienza CUP H27G23000030006',
            style: TextStyle(
                fontFamily: 'Quicksand',
                fontSize: 12.0,
                fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
          ),
    ),
/*        bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          controller: controller,
          indicatorColor: Colors.yellow,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.event_seat, color: Colors.yellow)),
            Tab(icon: Icon(Icons.timer, color: Colors.grey)),
            Tab(icon: Icon(Icons.shopping_cart, color: Colors.grey)),
            Tab(icon: Icon(Icons.person_outline, color: Colors.grey))
          ],
        ),
      ),*/
    );
  }

  Widget itemCard(String title, String imgPath, String description, String url_web) {
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
                          fontSize: 15.0,
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
                      color: Color(getColorHexFromStr('#FEDD59')),
                      child: Center(
                        child: ElevatedButton(
                          /*child: const Text('Vai'),
                          onPressed: () {
                            /*Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Orari('ciao')),
                            );*/

                            child: Text('Show Flutter homepage'),
                          },*/
                          onPressed: () => _launchURL(url_web),
                          child: Text('Vai'),
                        ),


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
  _launchURL(url_web) async {
    //const url = url_web;
    if (await canLaunchUrl(Uri.parse(url_web))) {
      await launchUrl(Uri.parse(url_web));
    } else {
      throw 'Could not launch $url_web';
    }
  }
}