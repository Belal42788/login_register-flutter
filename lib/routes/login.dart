// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            children:[
              Positioned(
                top: 0,
                left: 0,
                child: 
                  Image.asset(
                    "assets/images/main_top.png",
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
                      "LOGIN",
                        style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[700]),
                      ),
                    
                    SizedBox(
                      height: 25,
                    ),
                    
                    SvgPicture.asset(
                      "assets/icons/login.svg",
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
                          prefixIcon: Icon(Icons.lock,color: Colors.purple[800],size: 19,),
                          suffixIcon: Icon(Icons.visibility,color: Colors.purple[800]),
                          
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
                              padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 111,vertical: 11)),
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(22))),
                            ),
                            child: Text("LOGIN", style: TextStyle(fontSize: 15),),
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
                            Navigator.pushNamed(context, "/signup");
                          },
                          child: 
                            Text(
                              "Sign Up",
                              style: 
                              TextStyle(
                                color: Colors.purple[800],
                              )
                            ),
                        ),
                      ],
                    )
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