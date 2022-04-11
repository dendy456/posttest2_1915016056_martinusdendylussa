import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  Widget myLogo() {
    return Container(
        width: 300,
        height: 300,
        margin: EdgeInsets.only(bottom: 100),
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/kail1.png"))));
  }

  Widget myContainer() {
    return Container(
      width: 50, //MediaQuery.of(context).size.width,
      height: 50,
      color: Colors.amber,
      margin: EdgeInsets.all(10),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Color.fromRGBO(0, 103, 120, 50),
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(87, 120, 192, 251),
                  ),
                  child: Text(
                    'KAIL STORE',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  'Martinus Dendy Lussa',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontStyle: FontStyle.italic),
                ),
                myLogo(),
                Text(
                  'Welcome To Kail Store',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontStyle: FontStyle.italic,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(top: 10, bottom: 25),
                  child: Text(
                    'Segala Kebutuhan Mancing Anda Terpenuhi Semuanya Di sini, Bagaikan Surga Bagi Para Angler... ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontStyle: FontStyle.normal,
                      fontSize: 15,
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      myContainer(),
                      myContainer(),
                      myContainer(),
                      myContainer(),
                      myContainer(),
                    ],
                  ),
                ),
                Container(
                  width: 220,
                  height: 55,
                  margin: EdgeInsets.only(top: 150),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 209, 36, 20),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "Pesan Sekarang",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
