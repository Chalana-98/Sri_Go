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
    );
  }
}
