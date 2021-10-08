
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:fluttericon/typicons_icons.dart';
// import 'package:fluttericon/fontelico_icons.dart';
// import 'package:fluttericon/linecons_icons.dart';

void main() => runApp(App3());

class App3 extends StatelessWidget{
  const App3({Key? key}) : super(key: key);

  Widget build(BuildContext context){
    return MaterialApp(
      home: Statistics(),
    );
  }
}

class Statistics extends StatefulWidget{
  const Statistics({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _StatisticsState();
  }
}

class _StatisticsState extends State<Statistics>{

  String _chooseValue = 'All';


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Padding(
        padding: const EdgeInsets.only(left: 18.0,right: 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 60.0,
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    isExpanded: true,
                    elevation: 0,
                    value: _chooseValue,
                      items: <String>['All','Rides','No rides'].map<DropdownMenuItem<String>>((String value){
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value,style: TextStyle(fontWeight: FontWeight.bold),),
                        );
                      }
                      ).toList(),
                    onChanged: (String? value){
                        setState(() {
                          _chooseValue = value!;
                        });
                    },
                    icon: Icon(Icons.arrow_drop_down),
                  ),
                ),
              ),
            ),

            Grid(),
          ],
        ),
      ),
    );
  }
}

class Grid extends StatelessWidget{
  Widget build(BuildContext context){

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Column(
      children: <Widget>[
        Container(
          height: 430.0,
          decoration: BoxDecoration(
            // border: Border.all()
          ),
          child: GridView.count(
            scrollDirection: Axis.vertical,
            childAspectRatio: width / (height / 2.5),
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.lightBlue
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 12.0),
                        child: FaIcon(FontAwesomeIcons.route,color: Colors.white,size: 18.0,),// Didn't found the route icon, replaced with other icon
                      ),
                      Text('Distance',style: TextStyle(color: Colors.white,fontSize: 10.0),),
                      Text.rich(
                          TextSpan(
                              text: '0.0',
                              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 30.0),
                              children: <InlineSpan>[
                                TextSpan(
                                  text: ' km',
                                  style: TextStyle(fontSize: 9.0,color: Colors.white)
                                )
                                ]
                          )
                      ),

                    ],
                  ),
                ),

              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.lightBlue
                ),
                padding: const EdgeInsets.all(8),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 12.0),
                        child: Icon(CupertinoIcons.stopwatch,color: Colors.white,size: 20.0,),
                      ),
                      Text('Ride Duration',style: TextStyle(color: Colors.white,fontSize: 10.0),),
                      Text.rich(
                          TextSpan(
                              text: '00',
                              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 30.0),
                              children: <InlineSpan>[
                                TextSpan(
                                    text: ' hr ',
                                    style: TextStyle(fontSize: 9.0,color: Colors.white)
                                ),
                                TextSpan(
                                  text: '00',
                                  style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 30.0),
                                ),
                                TextSpan(
                                   text: ' min',
                                   style: TextStyle(fontSize: 9.0,color: Colors.white)
                                )
                              ]
                          )
                      ),
                    ],
                  ),
                ),

              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.lightBlue
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 12.0),
                        child: Icon(CupertinoIcons.speedometer,color: Colors.white,size: 20.0,),// Didn't found the avg meter icon, replaced with other icon
                      ),
                      Text('Avg Speed',style: TextStyle(color: Colors.white,fontSize: 10.0),),
                      Text.rich(
                          TextSpan(
                              text: '0.0',
                              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 30.0),
                              children: <InlineSpan>[
                                TextSpan(
                                    text: ' km/h',
                                    style: TextStyle(fontSize: 9.0,color: Colors.white)
                                )
                              ]
                          )
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.lightBlue
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 12.0),
                        child: Icon(Icons.speed,color: Colors.white,size: 20.0,),// Didn't found the top speed icon, replaced with other icon
                      ),
                      Text('Top speed',style: TextStyle(color: Colors.white,fontSize: 10.0),),
                      Text.rich(
                          TextSpan(
                              text: '0.0',
                              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 30.0),
                              children: <InlineSpan>[
                                TextSpan(
                                    text: ' km/h',
                                    style: TextStyle(fontSize: 9.0,color: Colors.white)
                                )
                              ]
                          )
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.lightBlue
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 12.0),
                        child: FaIcon(FontAwesomeIcons.route,color: Colors.white,size: 18.0,),// Didn't found the fuel icon, replaced with other icon
                      ),
                      Text('Fuel Spending',style: TextStyle(color: Colors.white,fontSize: 10.0),),
                      Text.rich(
                          TextSpan(
                              text: '\u{20B9} ',
                              style: TextStyle(fontSize: 11.0,color: Colors.white),
                              children: <InlineSpan>[
                                TextSpan(
                                    text: '0.0',
                                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 30.0),
                                )
                              ]
                          )
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.lightBlue
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 12.0),
                        child: FaIcon(FontAwesomeIcons.route,color: Colors.white,size: 18.0,),// Didn't found the fuel icon, replaced with other icon
                      ),
                      Text('Fuel Cost / KM',style: TextStyle(color: Colors.white,fontSize: 10.0),),
                      Text.rich(
                          TextSpan(
                              text: '0.0',
                              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 30.0),
                              children: <InlineSpan>[
                                TextSpan(
                                    text:  ' \u{20B9}',
                                    style: TextStyle(fontSize: 11.0,color: Colors.white)
                                )
                              ]
                          )
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}