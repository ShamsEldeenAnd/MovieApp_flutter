import 'package:flutter/material.dart';
import 'package:movie_app_flutter/logic/models/movie_model.dart';
import 'package:movie_app_flutter/ui/widget/PopularMovieItem.dart';

class PopularListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Popular",
                  style: TextStyle(fontSize: 20.0, color: Colors.white)),
              Text("See All",
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w100,
                      letterSpacing: 1.2)),
              
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 20),
            height: 600,
            child: ListView.builder(
                itemCount: popularMovies.length,
                itemBuilder: (context, index) {
                  return PopularMovieItem(popularMovies[index]);
                }),
          )
        ],
      ),
    );
  }
}
