import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_app_flutter/logic/models/movie_model.dart';
import 'package:movie_app_flutter/ui/pages/DestinationPage.dart';

class PopularMovieItem extends StatelessWidget {
  Movie _popularMovie;

  PopularMovieItem(Movie popularMovie) {
    _popularMovie = popularMovie;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 10, bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => DestinationPage(_popularMovie))),
              child: Container(
                padding: EdgeInsets.only(right: 15),
                child: Hero(
                  tag: _popularMovie.imgUrl,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.network(
                        _popularMovie.imgUrl,
                        fit: BoxFit.cover,
                        width: 100.0,
                        height: 200.0,
                      )),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(_popularMovie.name,
                      style: TextStyle(fontSize: 20.0, color: Colors.white)),
                  SizedBox(
                    height: 3,
                  ),
                  Text("${_popularMovie.hours}h ${_popularMovie.mins}min",
                      style: TextStyle(fontSize: 12.0, color: Colors.white)),
                  SizedBox(
                    height: 10,
                  ),
                  Text(_popularMovie.shortDescritpion,
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w100,
                      )),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.solidStar,
                        color: Colors.redAccent,
                        size: 20,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(_popularMovie.rate.toString(),
                          style:
                              TextStyle(fontSize: 20.0, color: Colors.white)),
                      Text(" /10",
                          style:
                              TextStyle(fontSize: 12.0, color: Colors.white)),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text("${_popularMovie.reviews} Reviews",
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w100,
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
