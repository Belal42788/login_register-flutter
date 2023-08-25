// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
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
                    "assets/images/main_top.png",
                    width: 100,
                  )
              ),
              
              Positioned(
                bottom: 0,
                left: 0,
                child: 
                  Image.asset(
                    "assets/images/main_bottom.png",
                    width: 60,
                  )
              ),

              SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 60,
                    ),

                    Text(
                      "WELCOME",
                        style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[700]),
                      ),
                    
                    SizedBox(
                      height: 40,
                    ),
                    
                    SvgPicture.asset(
                      "assets/icons/chat.svg",
                      height: 350,
                      width: 440,
                      fit: BoxFit.cover,
                    ),
                    
                    SizedBox(
                      height: 40,
                    ),
                    
                    ElevatedButton(
                            onPressed: (){ Navigator.pushNamed(context, "/login"); },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.purple[800]),
                              padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 111,vertical: 11)),
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(22))),
                            ),
                            child: Text("LOGIN", style: TextStyle(fontSize: 15),),
                          ),
                  
                    SizedBox(
                      height: 10,
                    ),
                    
                    ElevatedButton(
                            onPressed: (){ Navigator.pushNamed(context, "/signup"); },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.purple[100]),
                              padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 105,vertical: 11)),
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(22))),
                            ),
                            child: Text("SIGNUP", style: TextStyle(fontSize: 15),),
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