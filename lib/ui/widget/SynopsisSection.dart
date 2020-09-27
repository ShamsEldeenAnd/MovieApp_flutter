import 'package:flutter/material.dart';

class SynopsisSection extends StatelessWidget {
  String _description ;
  SynopsisSection(String description){
    _description = description;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:CrossAxisAlignment.start ,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text("Synopsis" , style: TextStyle(color: Colors.white , fontSize: 18.0),),
        SizedBox(
          height: 20,
        ),
        Text(_description , style: TextStyle(color: Colors.white38 , fontSize: 12.0),),
      ],
    );
  }
}
