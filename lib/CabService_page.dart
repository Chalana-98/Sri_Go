import 'package:flutter/material.dart';

class CabService extends StatefulWidget {
  const CabService({Key? key}) : super(key: key);

  @override
  State<CabService> createState() => _CabServiceState();
}

class _CabServiceState extends State<CabService> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cab Service'),
        backgroundColor: Colors.purple,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },icon:Icon(Icons.arrow_back_ios,size: 20,color: Colors.black,)),
      ),

      body:  Center(
        child: Container(
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
         child: Container(
            child: GridView(
              
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 2,),
              
              primary: false,
              padding: const EdgeInsets.all(10),
              children: [
               Card(


                 color: Colors.white,
                 child: Column(

                   children: [
                     Text('01')
                   ],
                 ),
               ),

                Card(
                  color: Colors.white,

                  child: Column(
                    children: [

                      TextButton(onPressed: (){},
                          child:Text("view detail")),

                      Text('01')
                    ],
                  ),
                ),
                Card(
                  color: Colors.white,

                  child: Column(
                    children: [

                      TextButton(onPressed: (){},
                          child:Text("view detail")),

                      Text('01')
                    ],
                  ),
                ),
                Card(
                  color: Colors.white,

                  child: Column(
                    children: [

                      TextButton(onPressed: (){},
                          child:Text("view detail")),

                      Text('01')
                    ],
                  ),
                ),
                Card(
                  color: Colors.white,

                  child: Column(
                    children: [

                      TextButton(onPressed: (){},
                          child:Text("view detail")),

                      Text('01')
                    ],
                  ),
                ),
                Card(
                  color: Colors.white,

                  child: Column(
                    children: [

                      TextButton(onPressed: (){},
                          child:Text("view detail")),

                      Text('01')
                    ],
                  ),
                ),
                Card(
                  color: Colors.white,

                  child: Column(
                    children: [

                      TextButton(onPressed: (){},
                          child:Text("view detail")),

                      Text('01')
                    ],
                  ),
                ),
                Card(
                  color: Colors.white,

                  child: Column(
                    children: [

                      TextButton(onPressed: (){},
                          child:Text("view detail")),

                      Text('01')
                    ],
                  ),
                ),
                Card(
                  color: Colors.white,

                  child: Column(
                    children: [

                      TextButton(onPressed: (){},
                          child:Text("view detail")),

                      Text('01')
                    ],
                  ),
                ),
                Card(
                  color: Colors.white,

                  child: Column(
                    children: [

                      TextButton(onPressed: (){},
                          child:Text("view detail")),

                      Text('01')
                    ],
                  ),
                ),
                Card(
                  color: Colors.white,

                  child: Column(
                    children: [

                      TextButton(onPressed: (){},
                          child:Text("view detail")),

                      Text('01')
                    ],
                  ),
                ),
                Card(
                  color: Colors.white,

                  child: Column(
                    children: [

                      TextButton(onPressed: (){},
                          child:Text("view detail")),

                      Text('01')
                    ],
                  ),
                ),


              ],
            ),
         ),
        ),


      ),
    );
  }
}
