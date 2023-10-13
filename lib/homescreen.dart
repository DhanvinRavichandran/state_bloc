import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_bloc/blocpage.dart';
import 'package:state_bloc/eventpage.dart';
import 'package:state_bloc/next%20page.dart';
import 'package:state_bloc/statepage.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,title: Text("Counter page"),),
      body: BlocBuilder<Counterblocs,Counterstate>(
        builder: (Counter,state){
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(state.Counter.toString()),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: (){
                    BlocProvider.of<Counterblocs>(context).add(increament());
                  }, child: Text("Increament")),
                  ElevatedButton(onPressed: (){
                    BlocProvider.of<Counterblocs>(context).add(decreament());
                  }, child: Text("Decreament")),
                ],
              ),
              TextButton(onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>nextpage(title: Text(state.Counter.toString()))));
              }, child: Text("Next Page"))
            ],
          );

        },
      ),
    );
  }
}
