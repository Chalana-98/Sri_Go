import 'package:flutter/material.dart';
import 'package:sri_go/HomePage.dart';
import 'package:sri_go/Register_page.dart';


class Login_page extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white70,

        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 60.0),
                child: Center(
                  child: Container(
                      width: 200,
                      height: 150,
                      /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                      child: Image.asset('assets/images/srigo2-01.png')),
                ),
              ),
              Padding(
                //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(80)),
                      

                      labelText: 'Email',
                      hintText: 'Enter valid email id as abc@gmail.com'),
                  
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(

                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(80)),
                      labelText: 'Password',
                      hintText: 'Enter secure password'),
                ),
              ),


            TextButton(
                onPressed: (){
                  //TODO FORGOT PASSWORD SCREEN GOES HERE
                },
                child: Text(
                  'Forgot Password',
                  style: TextStyle(color: Colors.blue, fontSize: 15),
                ),
              ),



              Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.blue, borderRadius: BorderRadius.circular(80.0)),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => HomePage()));
                  },

                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),

                ),
              ),

              Container(
               height: 500,
               width: 300,
               /* decoration: BoxDecoration(
                    color: Colors.blue, borderRadius: BorderRadius.circular(80.0)),*/
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Register_page()));
                  },

                  child: SizedBox(

                    child: Text ('New User? Create Account'),

                  ),


                ),
              ),


              /*
              SizedBox(
                height: 230,
              ),

              Text('New User? Create Account')*/


            ],
          ),
        )

      );
  }

}