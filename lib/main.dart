import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_bloc/blocpage.dart';
import 'homescreen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Counterblocs(),
      child: MaterialApp(
        title: 'Counter App',
        home: Homescreen(),
      ),
    );
  }
}