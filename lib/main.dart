import 'package:dihillah/admin/addUandM.dart';
import 'package:dihillah/admin/adminLogin.dart';
import 'package:dihillah/admin/profile.dart';
import 'package:dihillah/manager/createtask.dart';
import 'package:dihillah/manager/managerHome.dart';
import 'package:dihillah/manager/managerLogin.dart';
import 'package:dihillah/manager/messeges.dart';
import 'package:dihillah/manager/progresstask.dart';
import 'package:dihillah/manager/taskdiscription.dart';
import 'package:dihillah/manager/managertaskDis.dart';
import 'package:dihillah/user/pendingtask.dart';
import 'package:dihillah/user/userHome.dart';
import 'package:dihillah/user/userlogin.dart';
import 'package:dihillah/user/usertaskDis.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: UserHome(),
    );
  }
}

