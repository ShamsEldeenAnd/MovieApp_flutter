import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app_flutter/logic/models/movie_model.dart';
import 'package:movie_app_flutter/ui/pages/DestinationPage.dart';

class MovieItem extends StatelessWidget {

  //test app
  Movie _recentMovie ;


  MovieItem(Movie recentMovie){
    _recentMovie = recentMovie;
  }


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> Navigator.push(context, MaterialPageRoute(
        builder: (_) => DestinationPage(_recentMovie)
      )),
      child: Container(
        padding: EdgeInsets.only(right: 10 , top: 10),
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
         Container(
           height: 160,
           width: 100,
           child: Hero(
             tag: _recentMovie.imgUrl ,
             child: ClipRRect(
                 borderRadius: BorderRadius.circular(20.0),
                 child: Image.network( _recentMovie.imgUrl ,
                     fit: BoxFit.cover
                 )),
           ),
         ),
          SizedBox(height: 10,),
          Text(
              _recentMovie.name,
              style: TextStyle(fontSize: 14.0, color: Colors.white,))
        ],),
      ),
    );
  }
}
