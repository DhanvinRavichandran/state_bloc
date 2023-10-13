import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_bloc/blocpage.dart';
import 'package:state_bloc/statepage.dart';

class nextpage extends StatefulWidget {
  const nextpage({super.key,required this.title});
  final title;

  @override
  State<nextpage> createState() => _nextpageState();
}

class _nextpageState extends State<nextpage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("second page"),),
      body: BlocBuilder<Counterblocs,Counterstate>(
        builder: (context,state){
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child:Text(state.Counter.toString(),),)
            ],
          );
        },
      ),
    );
  }
}
