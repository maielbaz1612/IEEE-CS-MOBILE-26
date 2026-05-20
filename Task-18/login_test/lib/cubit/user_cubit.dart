import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:login_test/cubit/user_state.dart';

import '../core/API/api_consumer.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit({required this.api}) : super(UserInitial());
  //Sign in Form key
  final ApiConsumer api;
  GlobalKey<FormState> signInFormKey = GlobalKey();
  //Sign in email
  TextEditingController signInEmail = TextEditingController();
  //Sign in password
  TextEditingController signInPassword = TextEditingController();
  //Sign Up Form key
  GlobalKey<FormState> signUpFormKey = GlobalKey();
  //Profile Pic
  XFile? profilePic;
  //Sign up name
  TextEditingController signUpName = TextEditingController();
  //Sign up phone number
  TextEditingController signUpPhoneNumber = TextEditingController();
  //Sign up email
  TextEditingController signUpEmail = TextEditingController();
  //Sign up password
  TextEditingController signUpPassword = TextEditingController();
  //Sign up confirm password
  TextEditingController confirmPassword = TextEditingController();

  signIn() async{
    try {
      emit(SignInLoading());
      final response = await api.post("path");
        //   "https://food-api-omega.vercel.app/api/v1/user/signin",data: {
        // "email":signInEmail.text,
        // "password":signInPassword.text}
        
      emit(SignInSuccess());
      print(response);
    } catch (e) {
      emit(SignInFailer(errMessage: e.toString()));
      print(e.toString());
    }
  }
}
