import 'package:flutter/material.dart';


class Place_page extends StatefulWidget {
  const Place_page({Key? key}) : super(key: key);

  @override
  State<Place_page> createState() => _Place_pageState();
}

class _Place_pageState extends State<Place_page> {
  @override
  Widget build(BuildContext context) {

    var arrDistrics = ['Ampara',"Anuradhapura,",'Badulla','Batticaloa',
                         'Colombo','Galle','Gampaha','Hambantota','Jaffna','Kalutara',
                       'Kandy','Kegalle','Kilinochchi','Kurunegala','Mannar','Matale',
                      'Matara','Monaragala','Mullaitivu','Nuwara Eliya','Polonnaruwa',
               'Puttalam','Ratnapura','Trincomalee','Vavuniya'];
    return Scaffold(
      appBar: AppBar(
        title: Text('Place'),
        backgroundColor: Colors.purple,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },icon:Icon(Icons.arrow_back_ios,size: 20,color: Colors.black,)),
      ),

      body:  Center(


        child: Container(
          padding: EdgeInsets.all(8),

          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.black87,
                Colors.purple

              ]

            )
          ),

          child: new ListView.separated(itemBuilder: (context, index) {
            return Container(
               height: 100,


               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20),

                   gradient: LinearGradient(
                       begin: Alignment.topRight,
                       end: Alignment.bottomLeft,
                       colors: [
                         Colors.black87,
                         Colors.white

                       ]

                   )
               ),
                child: Text(arrDistrics[index]));
          },
            itemCount: arrDistrics.length,
            separatorBuilder: ( context, int index) {
            return Divider(height: 5,thickness: 5,);
            },

          )
        ),

      ),
    );
  }
}
