
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:iconsax/iconsax.dart';

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
  bool switchButton = false;

  void change(bool value){
    if(switchButton == false)
    {
      setState(() {
        switchButton = true;
      });
    }
    else
    {
      setState(() {
        switchButton = false;
      });
    }
  }

  late GoogleMapController _controller;
  final LatLng _center = const LatLng(15.353878, 75.138725);

  void _onMapCreated(GoogleMapController controller) {
    _controller = controller;
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.629,

                // Map integration code
                child:  GoogleMap(
                  zoomControlsEnabled: false,
                  mapType: MapType.terrain,
                  onMapCreated: _onMapCreated,
                  initialCameraPosition: CameraPosition(
                    target: _center,
                    zoom: 10.0,
                  ),
                ),
              ),

              //Fall Alert Container
              Padding(
                padding: EdgeInsets.only(left: 20.0,top: 8.0),
                child: Container(
                  height: 35.0,
                  width: 120.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black54,
                          blurRadius: 2.0,
                          offset: Offset(0.0, 0.75)
                      )
                    ],
                    color: Colors.grey.shade200
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 6.0),
                        child: Text('Fall Alert',style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.w500),),
                      ),
                      Transform.scale(
                        scale: 0.80,
                        child: Switch(
                            value: switchButton,
                            onChanged: change,
                            inactiveThumbColor: Colors.grey,
                            inactiveTrackColor: Colors.grey.shade400,
                        ),
                      )
                    ],
                  ),
                )
              ),

              //Map and location buttons
              Positioned(
                left: 300.0,
                top: 269.0,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60.0),
                          color: Colors.white,
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                                color: Colors.black54,
                                blurRadius: 2.0,
                                offset: Offset(0.0, 0.75)
                            )
                          ],
                        ),
                        child: IconButton(
                          onPressed: null,
                          icon: Icon(Iconsax.map,color: Colors.black,),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.0),
                        color: Colors.white,
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.black54,
                              blurRadius: 2.0,
                              offset: Offset(0.0, 0.75)
                          )
                        ]
                      ),
                      child: IconButton(
                        onPressed: null,
                        icon: Icon(Icons.assistant_navigation,color: Colors.black,),
                      ),
                    ),
                  ],
                ),
              ),

              //Floating action button
              Positioned(
                top: 330.0,
                left: 130.0,
                child: Container(
                  height: 40.0,
                  width: 90.0,
                  child: FloatingActionButton.extended(
                    backgroundColor: Colors.white,
                    onPressed: null,
                    label: Padding(
                      padding: const EdgeInsets.only(right: 30.0),
                      child: Text('Start',style: TextStyle(color: Colors.black),),
                    ),
                    icon: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Icon(Icons.arrow_right,size: 35.0,color: Colors.blue,),
                    ),
                  ),
                ),
              ),
            ],
          ),





          
          Container(
            height: MediaQuery.of(context).size.height * 0.19,
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