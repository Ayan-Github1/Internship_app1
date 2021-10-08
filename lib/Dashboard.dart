import 'package:flutter/material.dart';
// import 'package:mapmyindia_gl/mapmyindia_gl.dart';

void main() => runApp(DashboardClass());

class DashboardClass extends StatelessWidget{
  const DashboardClass({Key? key}) : super(key: key);

  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyDashboard(),
    );
  }
}

class MyDashboard extends StatefulWidget{
  const MyDashboard({Key? key}) : super(key: key);

  State<MyDashboard> createState() => _MyDashboardState();

}

class _MyDashboardState extends State<MyDashboard>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.59,
                //380.0,
                decoration: BoxDecoration(
                  border: Border.all(),
                ),

                // Map integration code comes here.....

              )
            ],
          ),




          Container(
            height: 133.0,
            color: Colors.grey.shade200,
            child: Column(
              children: <Widget>[
                //1st child
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 40.0,top: 15.0),
                          child: Column(
                            children: [
                              Text('00:00:00',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.0),),
                              Text('Time',style: TextStyle(fontSize: 8.0),)
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40.0,top: 15.0),
                          child: Column(
                            children: [
                              Text('0.00',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.0),),
                              Text('Distance(km)',style: TextStyle(fontSize: 8.0),)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                //2nd child
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 30.0,top: 10.0),
                      child: Column(
                        children: [
                          Text('0.00',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),),
                          Text('Avg speed(km/h)',style: TextStyle(fontSize: 8.0),)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 10.0),
                      child: Column(
                        children: [
                          Text('0.00',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),),
                          Text('Current speed(km/h)',style: TextStyle(fontSize: 8.0),)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0,top: 10.0),
                      child: Column(
                        children: [
                          Text('0.00',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),),
                          Text('Top speed(km/h)',style: TextStyle(fontSize: 8.0),)
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}