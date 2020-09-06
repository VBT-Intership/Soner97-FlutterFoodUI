import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:wasm';

class IcreamUi extends StatefulWidget {
  IcreamUi({Key key, String title}) : super(key: key);

  @override
  _IcreamUiState createState() => _IcreamUiState();
}

class _IcreamUiState extends State<IcreamUi> {
  List<String> categories = ["Banana Goreng", "Donat Click", "Copy Anget"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: a1(),
      body: b2(),
    );
  }

  Column b2() {
    return Column(
      children: [
        b1(),
        cards(),
        b3(),
        b4(),
      ],
    );
  }

  SizedBox b4() {
    return SizedBox(
        height: MediaQuery.of(context).size.height * 0.40,
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) => Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      
                      child: Image.asset('assets/images/3.jpg',
                          fit: BoxFit.cover),
                      height: 80,
                      width: 80,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Banana Goreng",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Row(
                          children: [
                            tagView("Sweet", Colors.orange),
                            tagView("Home Made", Colors.blue),
                            tagView("Free", Colors.green),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }

  Container tagView(String text, Color color) {
    return Container(
      decoration: BoxDecoration(
        color: color.withAlpha(50),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(color: color),
      ),
      margin: EdgeInsets.only(right: 8, left: 0, top: 4, bottom: 4),
    );
  }

  Column b3() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
              ),
              width: 50,
              height: 50,
              child: Icon(
                Icons.favorite,
                color: Colors.white,
              ),
              margin: EdgeInsets.only(left: 20, top: 20, bottom: 20),
            ),
            Column(
              children: [
                Text(
                  "Popular",
                  style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontSize: 22.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "Monggo bla bla",
                  style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Icon(Icons.arrow_forward),
              ],
            )
          ],
        ),
      ],
    );
  }

  SizedBox cards() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: cardListView(),
    );
  }

  ListView cardListView() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        margin: EdgeInsets.symmetric(horizontal: 7.0, vertical: 10.0),
        child: containerCard(context),
      ),
    );
  }

  Container containerCard(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      width: MediaQuery.of(context).size.width * 0.5,
      child: Column(
        children: [
          expandedCardImage(),
          cardDetail(),
        ],
      ),
    );
  }

  Expanded cardDetail() {
    return cardLocationandStar();
  }

  Expanded cardLocationandStar() {
    return Expanded(
        flex: 5,
        child: ListTile(

            //buraya avatar fln her sey ekleniyor.
            title: Text(
          "Sweets 12 Items",
          style: GoogleFonts.montserrat(
            color: Colors.black,
            fontSize: 18.0,
            fontWeight: FontWeight.w300,
          ),
        )));
  }

  Expanded expandedCardImage() {
    return Expanded(
      flex: 6,
      child: Image.asset('assets/images/1.jpg', fit: BoxFit.fill),
    );
  }

  Row b1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text(
              "   What do you want ",
              textAlign: TextAlign.left,
              style: GoogleFonts.montserrat(
                fontSize: 18.0,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "to eat today? ",
              textAlign: TextAlign.left,
              style: GoogleFonts.montserrat(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: FlatButton(
              onPressed: null,
              shape: StadiumBorder(),
              splashColor: Colors.black,
              child: Icon(
                Icons.search,
                color: Colors.black,
                size: 30.0,
              )),
        ),
      ],
    );
  }

  AppBar a1() => AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: FlatButton(
            onPressed: null,
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 20.0,
            )),
        actions: [
          FlatButton(
              onPressed: null,
              child: Icon(
                Icons.clear_all,
                color: Colors.black,
                size: 20.0,
              )),
        ],
      );
}
