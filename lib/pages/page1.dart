import 'dart:async';

import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  late StreamController<int> _Page1Controller;

  @override
  void initState(){
    super.initState();

    _Page1Controller = StreamController<int>();
    _startAddingNumbers();
  }

  void _startAddingNumbers() async {
    for (int i = 0; i <= 10; i++) {
      await Future.delayed(Duration(seconds: 2));
      _Page1Controller.sink.add(i );
      
    }
    Text("Done");
  }

  @override
  void dispose(){
    _Page1Controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to Tricious'),
      ),
      body: Center(
        child: StreamBuilder(
          stream: _Page1Controller.stream, 
          builder: (context, snapshot){
            if(snapshot.connectionState == ConnectionState.waiting){
              return const CircularProgressIndicator();
            }
            if(!snapshot.hasData){
              return const Text("No data Available");
            }
             if(snapshot.hasError){
              return Text(snapshot.error.toString());
            }
            
            return Text(
              snapshot.data.toString(),
              style: const TextStyle(fontSize: 48.0, color: Colors.purpleAccent) ,         
            );
          },),
      ),
    );

  }
}