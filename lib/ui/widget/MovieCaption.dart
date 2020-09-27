import 'package:flutter/material.dart';

class MovieCaption extends StatelessWidget {

  Widget singleCaption(String caption) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Container(
        child: Text(
          caption,
          style: TextStyle(
            color: Colors.white70,
            fontSize: 12.0,
          ),
        ),
        width: 60,
        height: 25,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.white38)),
        alignment: Alignment.center,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        singleCaption("Action"),
        singleCaption("Drama"),
        singleCaption("History")
      ],
    );
  }
}
