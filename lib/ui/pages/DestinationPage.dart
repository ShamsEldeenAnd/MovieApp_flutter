import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_app_flutter/logic/models/movie_model.dart';
import 'package:movie_app_flutter/ui/widget/MovieCaption.dart';
import 'package:movie_app_flutter/ui/widget/RatingSection.dart';
import 'package:movie_app_flutter/ui/widget/SynopsisSection.dart';

class DestinationPage extends StatefulWidget {

  Movie _movie ;

  DestinationPage(Movie recentMovie){
    _movie = recentMovie ;
  }


  @override
  _DestinationPageState createState() => _DestinationPageState();
}

class _DestinationPageState extends State<DestinationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Stack(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.width,
                    child: Hero(
                        tag:
                        widget._movie.imgUrl,
                        child: Image(
                          image: NetworkImage(
                              widget._movie.imgUrl),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Opacity(
                    opacity: 1,
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                          colors: [Color.fromRGBO(29,  29, 39, 1), Colors.black12],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ))),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(FontAwesomeIcons.arrowLeft),
                          iconSize: 20.0,
                          color: Colors.white70,
                          onPressed: () => Navigator.pop(context),
                        ),
                        Row(
                          children: <Widget>[
                            IconButton(
                              icon: Icon(FontAwesomeIcons.cloudUploadAlt),
                              iconSize: 20.0,
                              color: Colors.white70,
                              onPressed: () => Navigator.pop(context),
                            ),
                            IconButton(
                              icon: Icon(FontAwesomeIcons.heart),
                              iconSize: 20.0,
                              color: Colors.white70,
                              onPressed: () => Navigator.pop(context),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 20.0,
                    bottom: 20.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          widget._movie.name,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22.0,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.0,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        MovieCaption()
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                padding:
                    const EdgeInsets.only(left: 20, right: 20, bottom: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Divider(
                      height: 1,
                      color: Colors.white38,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RatingBar(widget._movie),
                    SizedBox(
                      height: 20,
                    ),
                    Divider(
                      height: 1,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    SynopsisSection(widget._movie.description) ,
                    SizedBox(
                      height: 20,
                    ) ,
                    Divider(
                      height: 1,
                      color: Colors.white38,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Photogallery" , style: TextStyle(color: Colors.white , fontSize: 18.0),),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
