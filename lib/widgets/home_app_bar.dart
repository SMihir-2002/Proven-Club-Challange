import 'package:flutter/material.dart';
import 'package:flutter_mihir/common/app_text_syles.dart';



PreferredSizeWidget? homeAppBar (){
  return AppBar(
    backgroundColor:  const Color.fromARGB(255, 54, 11, 61),
    title: Column(
      children: [
        Text("Welcome Back!", style: AppTextStyles.heading1.copyWith(color: Colors.white)),
        Text("What do you feel like today?", style: AppTextStyles.heading2.copyWith(color: Colors.white))
      ],
    ));
}