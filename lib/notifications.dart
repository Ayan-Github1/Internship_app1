import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(Notifications());

class Notifications extends StatelessWidget{
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NotificationsState(),
    );
  }
}

class NotificationsState extends StatefulWidget{
  const NotificationsState({Key? key}) : super(key: key);

  @override
  State<NotificationsState> createState() {
    return _NotifyState();
  }
}

class _NotifyState extends State<NotificationsState>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Container(
                height: 60.0,
                width: 150.0,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(5.0)
                ),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0,left: 18.0),
                      child: Icon(Icons.location_on,size: 30.0,),
                    ),
                    Text('HUBLI',style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
            ),
            
            
            Divider(color: Colors.black,),
            Padding(
              padding: const EdgeInsets.only(left: 15.0,bottom: 5.0),
              child: Center(
                child: Column(
                  children: [

                    ListTile(
                      leading: CircleAvatar(
                        child: FaIcon(FontAwesomeIcons.carCrash,color: Colors.white,size: 20.0,),//Didn't found the exact icon, replaced with another icon
                        backgroundColor: Colors.redAccent,
                        radius: 20.0,
                      ),
                      title: Text('Better Accident Alert'),
                    ),

                    ListTile(
                      leading: CircleAvatar(
                        child: FaIcon(FontAwesomeIcons.carCrash,color: Colors.white,size: 20.0,),//Didn't found the exact icon, replaced with another icon
                        backgroundColor: Colors.orange,
                        radius: 20.0,
                      ),
                      title: Text('Possible Theft Alerts'),
                    ),

                    ListTile(
                      leading: CircleAvatar(
                        child: FaIcon(FontAwesomeIcons.carCrash,color: Colors.white,size: 20.0,),//Didn't found the exact icon, replaced with another icon
                        backgroundColor: Color.fromARGB(255, 212, 145, 1) ,
                        radius: 20.0,
                      ),
                      title: Text('Instant Tamper Alerts'),
                    ),

                    ListTile(
                      leading: CircleAvatar(
                        child: FaIcon(FontAwesomeIcons.carCrash,color: Colors.white,size: 20.0,),//Didn't found the exact icon, replaced with another icon
                        backgroundColor: Colors.lightBlueAccent,
                        radius: 20.0,
                      ),
                      title: Text('Bike Fall Alerts'),
                    ),

                    ListTile(
                      leading: CircleAvatar(
                        child: Icon(Icons.location_on,color: Colors.white,size: 20.0,),
                        backgroundColor: Colors.indigoAccent,
                        radius: 20.0,
                      ),
                      title: Text('Realtime Notifications'),
                    ),

                    ListTile(
                      leading: CircleAvatar(
                        child: Icon(Icons.local_gas_station_rounded,color: Colors.white,size: 20.0,),
                        backgroundColor: Colors.green,
                        radius: 20.0,
                      ),
                      title: Text('Automatic Ride Recording'),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[

                  Container(
                    height: 40.0,
                    width: 90.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.lightBlue),
                        borderRadius: BorderRadius.circular(3.0),
                      ),
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(),
                      onPressed: null,
                      child: Text('Know More',style: TextStyle(color: Colors.lightBlue,fontSize: 11.0)),
                    ),
                    ),

                  Container(
                    width: 90.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3.0),
                        color: Colors.red,
                    ),
                    child: ElevatedButton(
                        onPressed: null,
                        child: Text('Map Device',style: TextStyle(color: Colors.white,fontSize: 11.0),),
                    ),
                  ),

                  Container(
                    width: 80.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.0),
                      color: Colors.blue,
                    ),
                    child: ElevatedButton(
                        onPressed: null,
                        child: Text('Buy Now',style: TextStyle(color: Colors.white,fontSize: 11.0))
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


