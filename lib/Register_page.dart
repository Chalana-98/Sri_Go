
import 'package:flutter/material.dart';
import 'package:sri_go/HomePage.dart';
import 'package:sri_go/Login_page.dart';

class Register_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      resizeToAvoidBottomInset: false,
      //resizeToAvoidBottomPadding: false,
      //backgroundColor: Colors.white70,
      appBar: AppBar(

       /* centerTitle: true,
        title: Text ("Sign up", style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,

        ),),*/
        elevation: 1,
        brightness: Brightness.dark,
       backgroundColor: Colors.purple,
        leading:
        IconButton( onPressed: (){
          Navigator.pop(context);
        },icon:Icon(Icons.arrow_back_ios,size: 20,color: Colors.black,)),
      ),
      body: SafeArea(

        child: SingleChildScrollView(

          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      'assets/images/back1-01.png'),
                fit: BoxFit.cover
              )
            ),

            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                        Image.asset('assets/images/srigo3-01.png',height: 150,width: 150,),
                        SizedBox(height: 50,),
                       /* Text("Create an Account,Its free",style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey[700],
                        ),),*/
                        SizedBox(height: 10,)
                      ],
                    ),

                    Padding(
                      //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                      padding: EdgeInsets.symmetric(horizontal: 015),
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

                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 15, bottom: 50),
                      //padding: EdgeInsets.symmetric(horizontal: 15),
                      child: TextField(

                        obscureText: true,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(80)),
                            labelText: 'Confirm Password',
                            hintText: 'Re Enter secure password'),
                      ),
                    ),



                   /* Padding(
                      padding: EdgeInsets.symmetric(

                          horizontal: 40,
                        vertical: 10,

                      ),


                      child: Column(

                        children: [



                          makeInput(label: "Email"),
                          makeInput(label: "Password",obsureText: true),
                          makeInput(label: "Confirm Pasword",obsureText: true)
                        ],

                      ),

                    ),  */


                    Padding(

                      padding: EdgeInsets.symmetric(horizontal: 80),
                      child: Container(


                        padding: EdgeInsets.only(top: 3,left: 3),
                        decoration: BoxDecoration(
                            color: Colors.purple, borderRadius: BorderRadius.circular(80.0),
                           //borderRadius: BorderRadius.circular(0),
                            border: Border(
                                bottom: BorderSide(color: Colors.black),
                                top: BorderSide(color: Colors.black),
                                right: BorderSide(color: Colors.black),
                                left: BorderSide(color: Colors.black)
                            )
                        ),

                       child: MaterialButton(

                          onPressed: () {
                            Navigator.push(
                                context, MaterialPageRoute(builder: (_) => HomePage()));
                          },

                          child: SizedBox(

                            width: 150,

                            child: Text ('Sign Up',textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 25,color: Colors.white),),


                          ),



                          /* minWidth: double.infinity,
                          height:60,

                          onPressed: (){},
                          color: Colors.redAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)
                          ),
                          child: Text("Sign Up",style: TextStyle(
                            fontWeight: FontWeight.w600,fontSize: 16,

                          ),),
                          */
                        ),
                      ),
                    ),


                    SizedBox(height: 100,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Text("Already have an account? "),

                        MaterialButton(onPressed: () {
                          Navigator.push(
                              context, MaterialPageRoute(builder: (_) => Login_page()));
                        },
                          child: SizedBox(

                            child: Text ('Log In',style: TextStyle(fontSize: 20),),

                          ),
                        )
                      ],
                    )



                  ],


                ),

              ],
            ),
          ),

        ),

      ),

    );

  }
}

Widget makeInput({label,obsureText = false}){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(label,style:TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
         color: Colors.black87
      ),),
      SizedBox(height: 5,),
      TextField(
        obscureText: obsureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
            ),
          ),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.greenAccent)
          ),
        ),
      ),
      SizedBox(height: 30,)

    ],
  );
}
