import 'package:flutter/material.dart';

void main() => runApp(const LocationShare());

class LocationShare extends StatelessWidget{
  const LocationShare({Key?  key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LocationShareState(),
    );
  }
}

class LocationShareState extends StatefulWidget{
  const LocationShareState({Key? key}) : super(key: key);

  State<LocationShareState> createState() => LocationPage();
}

class LocationPage extends State<LocationShareState>{
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(child: Text('Location Page')),
    );
  }
}