import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new ListView(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 25.0, left: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              new Text(
                "Hi, Jayant !",
                style: GoogleFonts.openSans(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Discover new books",
                style: GoogleFonts.openSans(
                    fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 40.0,
                margin: EdgeInsets.only(top: 28.0, right: 25.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey[200],
                ),
                child: Stack(
                  children: [
                    new TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 10, left: 24.0),
                        border: InputBorder.none,
                        hintText: 'Search books...',
                        hintStyle: GoogleFonts.openSans(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 30,
                margin: EdgeInsets.only(top: 20.0),
                child: DefaultTabController(
                  length: 3,
                  child: TabBar(
                      indicatorPadding: EdgeInsets.all(0),
                      isScrollable: true,
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey,
                      labelStyle: GoogleFonts.openSans(
                          fontSize: 14.0, fontWeight: FontWeight.w700),
                      unselectedLabelStyle: GoogleFonts.openSans(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                      ),
                      tabs: [
                        Tab(
                          child: new Container(
                            margin: EdgeInsets.only(right: 23),
                            child: new Text("New"),
                          ),
                        ),
                        Tab(
                          child: new Container(
                            margin: EdgeInsets.only(right: 23),
                            child: new Text("Trending"),
                          ),
                        ),
                        Tab(
                          child: new Container(
                            margin: EdgeInsets.only(right: 23),
                            child: new Text("Best Seller"),
                          ),
                        ),
                      ]),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 22),
                height: 210,
                child: ListView.builder(
                    itemCount: 6,
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(left: 0, right: 6.0),
                    itemBuilder: (context, index) {
                      return Container(
                        height: 210,
                        width: 155,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            image: DecorationImage(
                              image: AssetImage('assets/1.png'),
                            )),
                      );
                    }),
              ),
              Padding(
                padding: EdgeInsets.only(top: 25.0, left: 15.0),
                child: Column(
                  children: [
                    new Text(
                      "Popular",
                      style: GoogleFonts.openSans(
                          fontWeight: FontWeight.bold, fontSize: 24.0),
                    ),
                  ],
                ),
              ),
              
            ],
          ),
        ),
      ],
    ));
  }
}
