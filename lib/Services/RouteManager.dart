import 'package:flutter/material.dart';

class CustomRouteManager{

  static CustomRouteManager shared = CustomRouteManager();

  static Future<dynamic> navigateTo({required Widget screen,required BuildContext context}) async{

    dynamic data =  await Navigator.of(context).push(MaterialPageRoute(builder: (context) => screen));
    return data;
  }
}