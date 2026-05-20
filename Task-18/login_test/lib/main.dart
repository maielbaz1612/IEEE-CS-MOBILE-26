import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_test/core/API/dio_consumer.dart';
import 'package:login_test/screens/sign_in_screen.dart';
import 'cubit/user_cubit.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => UserCubit(api: DioConsumer(Dio())),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignInScreen(),
    );
  }
}
