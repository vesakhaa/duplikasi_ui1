// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Item Service Coffe'),
          ),
          body: ListView(
            padding: EdgeInsets.all(16),
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(40.0, 30.0, 40.0, 60.0),
                decoration: BoxDecoration(
                    color: Colors.brown[50],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                      bottomLeft: Radius.circular(180.0),
                      bottomRight: Radius.circular(180.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.brown,
                        blurRadius: (6.0),
                        offset: (Offset(1.0, 3.0)),
                      )
                    ]),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            'assets/coffee.jpg',
                            fit: BoxFit.cover,
                            height: 100.0,
                            width: 100.0,
                          ),
                        ),
                        SizedBox(height: 16.0,),
                        Text("Caffè Latte",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown[900],
                        ),
                        ),
                        SizedBox(height: 20.0,),
                        Text("A caffè latte is simply a shot or two of bold, tasty espresso with fresh, sweet steamed milk over it.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12.0,
                        ),),
                        SizedBox (height :30.0, ),
                        TextButton(
                          onPressed: () {
                            print('Explore More');
                          },
                          style : ButtonStyle(
                            padding: WidgetStateProperty.resolveWith((states) {
                              return const EdgeInsets.symmetric(
                                horizontal: 30.0,
                                vertical: 16.0,
                              );
                            }),
                            backgroundColor: WidgetStateProperty.resolveWith ((states) {
                              return Colors.brown[700];
                            }),
                            foregroundColor: WidgetStateProperty.resolveWith((states){
                              return Colors.white;
                            }),
                            shape: WidgetStateProperty.resolveWith((states){
                              return RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              );
                            })
                          ),
                          child: const Text('Explore Now'),
                        )
                      ],
                    ),
              )
            ],
          ),
        ));
  }
}
