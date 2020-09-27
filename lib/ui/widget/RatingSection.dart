

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_app_flutter/logic/models/movie_model.dart';

class RatingBar extends StatelessWidget {

  Movie _movie ;

  RatingBar(Movie movie){
    _movie = movie;
  }



  Widget metaScore(String rate){
    return  Column(

      children: [Text(rate ,style: TextStyle(color: Color.fromRGBO(112, 191, 127, 1) ,fontSize: 22.0  ),), Text("Metascore" , style: TextStyle(color: Colors.white , fontSize: 18.0),) ],
    );
  }

  Widget rateThis(){
    return  Column(

      children: [Icon(FontAwesomeIcons.solidStar,color: Colors.white70,size: 20.0,)
        ,SizedBox(height: 5,)
        , Text("Rate This" , style: TextStyle(color: Colors.white , fontSize: 18.0),) ],
    );
  }

  Widget rateLabel(String rate){
    return  Column(
      children: [Icon(FontAwesomeIcons.star,color: Colors.red,size: 20.0,)
        ,SizedBox(height: 5,)
        , Row(
        children: [
          Text(rate , style: TextStyle(color: Colors.white , fontSize: 18.0),),

          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text("/10" , style: TextStyle(color: Colors.white , fontSize: 10.0),),
          )
        ],
      ) ],
    );
  }



  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [
        metaScore(_movie.metaScore.toString())
        , rateLabel(_movie.rate.toString()) ,rateThis()
      ],
    );
  }
}
