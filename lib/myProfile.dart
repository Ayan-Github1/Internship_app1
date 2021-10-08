import 'package:flutter/material.dart';

void main() => runApp(const MyProfile());

class MyProfile extends StatelessWidget{
  const MyProfile({Key?  key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyProfileState(),
    );
  }
}

class MyProfileState extends StatefulWidget{
  const MyProfileState({Key? key}) : super(key: key);

  State<MyProfileState> createState() => MyProfilePage();
}

class MyProfilePage extends State<MyProfileState>{
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(child: Text('My profile')),
    );
  }
}