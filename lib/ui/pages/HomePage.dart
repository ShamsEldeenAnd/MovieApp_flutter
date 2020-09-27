import 'package:flutter/material.dart';
import 'file:///F:/Personal%20Work/Flutter/MovieAppFlutter/movie_app_flutter/lib/ui/pages/MoviesListView.dart';
import 'package:movie_app_flutter/ui/pages/PopularListView.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate([
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0 ,top: 50),
                  child: Text("Search", style: TextStyle(fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 10.0),
                  child: TextField(
                    style: TextStyle(fontSize: 22.0,
                        color: Colors.white),
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white38),
                      ),
                      focusedBorder:UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white38),
                      ) ,
                      hintText: "Movies, Actors, Directors...",
                      hintStyle: TextStyle(
                          fontSize: 22.0,
                          color: Colors.white54
                      )
                  ),),
                ),
                MoviesListView(),
              ]
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                PopularListView()
              ]),
            )
          ],
        ),
      ),
    );
  }
}
