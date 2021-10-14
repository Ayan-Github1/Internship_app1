import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() => runApp(const AddMoreVehicle());

class  AddMoreVehicle extends StatelessWidget{
  const AddMoreVehicle({Key?  key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AddMoreVehicleState(),
    );
  }
}

class AddMoreVehicleState extends StatefulWidget{
  const AddMoreVehicleState({Key? key}) : super(key: key);

  State<AddMoreVehicleState> createState() => AddMoreVehiclePage();
}


class AddMoreVehiclePage extends State<AddMoreVehicleState>{
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        leading: Padding(
            padding: const EdgeInsets.all(1.0),
            child: Builder(
              builder: (context) =>
                  IconButton(
                    icon: Icon(Icons.arrow_back,size: 30.0,),
                    onPressed: () => Scaffold.of(context).openDrawer(),
                  ),
            )
        ),
        elevation: 1.0,
        backgroundColor: Colors.grey.shade200,
        title: Text("Add more vehicle",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 19.0),),
      ),

      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top:30.0,right: 230.0),
            child: Text("Select vehicle",style: TextStyle(color: Colors.black,fontSize: 12.0),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CircleAvatar(
                  radius: 15.0,
                  child: Icon(Icons.two_wheeler_outlined),
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),


                CircleAvatar(
                  radius: 15.0,
                  child: Icon(Icons.directions_car),
                  backgroundColor: Colors.grey,
                  foregroundColor: Colors.white,
                ),


                CircleAvatar(
                  radius: 15.0,
                  child: Icon(Icons.electric_rickshaw),
                  backgroundColor: Colors.grey,
                  foregroundColor: Colors.white,
                ),

                CircleAvatar(
                  radius: 15.0,
                  child: Icon(Icons.directions_bus),
                  backgroundColor: Colors.grey,
                  foregroundColor: Colors.white,
                ),

              ],
            ),
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:10.0,top: 8.0),
                      child: Text("Two wheeler",style: TextStyle(fontSize: 10.0,color: Colors.blue),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text("Four wheeler",style: TextStyle(fontSize: 10.0,color: Colors.grey),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text("Auto rickshaw",style: TextStyle(fontSize: 10.0,color: Colors.grey),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text("Heavy vehicle",style: TextStyle(fontSize: 10.0,color: Colors.grey),),
                    ),
                  ],
                ),
              ),

            ],

          ),
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 30.0,right: 10.0,left: 20.0),
                child: Row(
                  children: [
                    Text("Select vehicle make",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 12.0),),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0,left: 150.0),
                      child: Icon(Icons.arrow_drop_down,color: Colors.blue,size: 50.0,),
                    )

                  ],
                ),
              ),


            ],


          ),
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top:25.0,right: 100.0),
                child: Text("Enter vehicle number e.g. MH02CV3666",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 12.0),),
              ),
              Divider(
                thickness: 1.0,
                height: 20,
                indent: 20,
                endIndent: 20,
              )
            ],
          ),

          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top:25.0,right: 250.0),
                child: Text("Device UID",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 12.0),),
              ),
              Divider(
                thickness: 1.0,
                height: 20,
                indent: 20,
                endIndent: 80,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom:15.0,left: 310.0,),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.smartphone)
                  ],
                ),
              )
            ],
          ),

          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top:5.0,right: 200.0),
                child: Text("Device IMEI Number",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 12.0),),
              ),
              Divider(
                thickness: 1.0,
                height: 20,
                indent: 20,
                endIndent: 20,
              )
            ],
          ),

          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Container(
                  height: 30,
                  width: 350,
                  child: FlatButton(
                    child: Text("Save",style: TextStyle(color: Colors.white),),

                    color: Colors.blue,

                    onPressed: () {},
                  ),
                ),
              ),
            ],
          )

        ],
      ),
    );
  }
}