// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          // color: Colors.amber,
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            children:[
              Positioned(
                top: 0,
                left: 0,
                child: 
                  Image.asset(
                    "assets/images/signup_top.png",
                    width: 100,
                  )
              ),
              
              Positioned(
                bottom: 0,
                right: 0,
                child: 
                  Image.asset(
                    "assets/images/login_bottom.png",
                    width: 90,
                  )
              ),

              SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    SizedBox(
                      height: 50,
                    ),

                    Text(
                      "SIGNUP",
                        style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[700]),
                      ),
                    
                    SizedBox(
                      height: 25,
                    ),
                    
                    SvgPicture.asset(
                      "assets/icons/signup.svg",
                      height: 230,
                      fit: BoxFit.cover,
                    ),
                    
                    SizedBox(
                      height: 20,
                    ),
                    
                    Container(
                      width: 260,
                      padding: EdgeInsets.symmetric(horizontal: 9,),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 243, 222, 247),
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          
                          hintText: "Email :",
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.person,color: Colors.purple[800]),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 15,
                    ),
                    
                    Container(
                      width: 260,
                      padding: EdgeInsets.symmetric(horizontal: 9,),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 243, 222, 247),
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          
                          hintText: "Password :",
                          border: InputBorder.none,
                          suffixIcon: Icon(Icons.visibility,color: Colors.purple[800]),
                          prefixIcon: Icon(Icons.lock,color: Colors.purple[800],size: 19,),
                          
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 16,
                    ),

                    ElevatedButton(
                            onPressed: (){
                                
                              },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.purple[800]),
                              padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 105,vertical: 11)),
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(22))),
                            ),
                            child: Text("SIGNUP", style: TextStyle(fontSize: 15),),
                          ),
                    
                    SizedBox(
                      height: 20,
                    ),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                            "Don't hanve an ccount ? ",
                            style: 
                              TextStyle(
                                color: Colors.purple[800],
                              ),
                        ),
                        
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "/login");
                          },
                          child: 
                            Text(
                              "Sign in",
                              style: 
                              TextStyle(
                                color: Colors.purple[800],
                              )
                            ),
                        ),

                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),

                    SizedBox(
                          width: 299,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              
                              Text(
                                "____________________ OR ____________________",
                                style:
                                  TextStyle(
                                    color: Colors.purple[800],
                                    fontSize: 13
                                  ),
                                ),
                            
                            ],
                          ),
                    ),
                    
                    SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                          width: 250,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                padding: EdgeInsets.all(13),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.purple),
                                  shape: BoxShape.circle
                                ),
                                child: SvgPicture.asset(
                                  "assets/icons/facebook.svg",
                                  color: Colors.purple[800],
                                ),
                              ),
                              
                              SizedBox(
                                width: 16,
                              ),
                              
                              Container(
                                width: 50,
                                height: 50,
                                padding: EdgeInsets.all(13),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.purple),
                                  shape: BoxShape.circle
                                ),
                                child: SvgPicture.asset(
                                  "assets/icons/twitter.svg",
                                  color: Colors.purple[800],
                                ),
                              ),
                              
                              SizedBox(
                                width: 16,
                              ),

                              Container(
                                width: 50,
                                height: 50,
                                padding: EdgeInsets.all(13),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.purple),
                                  shape: BoxShape.circle
                                ),
                                child: SvgPicture.asset(
                                  "assets/icons/google-plus.svg",
                                  color: Colors.purple[800],
                                ),
                              ),
                              
                            ],
                          ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}