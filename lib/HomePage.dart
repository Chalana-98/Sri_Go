import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: (){
            Navigator.pop(context);
          },icon:Icon(Icons.arrow_back_ios,size: 20,color: Colors.black,)),
        )
            ,


    );
  }
}

