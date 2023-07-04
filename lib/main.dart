import 'package:flutter/material.dart';
import 'dart:math' ;

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Random random = Random();
  int x = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lottery App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Text('Your winning number is 4')),
            SizedBox(height: 20,),
            Container(
              height: 250,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.3),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: x == 4 ?
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.done_all , color: Colors.green , size: 35,),
                    SizedBox(height: 20,),
                    Text('Congratulations! You\'ve won the lottery. \nYour number is $x.' ,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ) :
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.error , color: Colors.red, size: 35,),
                    SizedBox(height: 20,),
                    Text('Better luck next time. Your number is $x. \nTry again.' ,
                      textAlign: TextAlign.center,
                    ),
                    ],
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: (){
              x = random.nextInt(6);
              print(x.toString());
              print('tap');

              setState(() {

              });
            },
          child: Icon(x>5 ? Icons.add : Icons.refresh),

        ),
      ),
    );
  }
}
