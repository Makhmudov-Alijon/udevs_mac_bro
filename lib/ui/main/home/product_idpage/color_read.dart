import 'package:flutter/material.dart';

class ColorsRead extends StatelessWidget {
   ColorsRead({Key? key,required this.color}) : super(key: key);
   final String color;
  @override
  Widget build(BuildContext context) {
    return Container();
  }
   ColorRead(String color){
    switch (color) {
      case 'red': {
       return Colors.red;
      }
    }

  }
}
