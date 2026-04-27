import 'package:flutter/material.dart';
import 'package:to_do/home.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/task_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'To-Do App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: BlocProvider(
        create: (context) => TaskCubit(),
        child: Home(),
      ),
    );
  }
}