import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
void main() => runApp(const AddMoreVehicle());

class  AddMoreVehicle extends StatelessWidget{
  const AddMoreVehicle({Key?  key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AddMoreVehicleState();

  }
}

class AddMoreVehicleState extends StatefulWidget{
  const AddMoreVehicleState({Key? key}) : super(key: key);

  State<AddMoreVehicleState> createState() => AddMoreVehiclePage();
}


class AddMoreVehiclePage extends State<AddMoreVehicleState>{
  String _chooseValue = 'Select vehicle make';
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomInset: false ,
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        leading: Padding(
            padding: const EdgeInsets.all(1.0),
            child: Builder(
              builder: (context) =>
                  IconButton(
                    icon: Icon(Icons.arrow_back,size: 30.0,),
                    onPressed: () => Navigator.pop(context),
                  ),
            )
        ),
        elevation: 1.0,
        backgroundColor: Colors.grey.shade200,
        title: Text("Add more vehicle",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 19.0),),
      ),

      body: Padding(
        padding: const EdgeInsets.only(top: 15.0,left: 18.0,right: 18.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  // border: Border.all()
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: Text("Select vehicle",style: TextStyle(color: Colors.black,fontSize: 12.0,fontWeight: FontWeight.w700)),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Container(
                                child: CircleAvatar(
                                  radius: 13,
                                    child: Icon(Icons.two_wheeler_outlined,size: 20,),
                                    backgroundColor: Colors.blue,
                                    foregroundColor: Colors.white,
                                ),
                                decoration: new BoxDecoration(
                                  shape: BoxShape.circle,

                                  border: new Border.all(
                                    color: Colors.green,
                                    width: 3.0,
                                  ),
                                ),
                              ),
                              Text("Two wheeler",style: TextStyle(fontSize: 9.0,color: Colors.blue),),
                            ],
                          ),

                          Column(
                            children: <Widget>[
                              CircleAvatar(
                                            radius: 13.0,
                                            child: Icon(Icons.directions_car),
                                            backgroundColor: Colors.grey,
                                            foregroundColor: Colors.white,
                              ),
                              Text("Four wheeler",style: TextStyle(fontSize: 9.0,color: Colors.grey),),
                            ],
                          ),

                          Column(
                            children: <Widget>[
                              CircleAvatar(
                                radius: 13.0,
                                child: Icon(Icons.electric_rickshaw),
                                backgroundColor: Colors.grey,
                                            foregroundColor: Colors.white,
                              ),
                              Text("Auto rickshaw",style: TextStyle(fontSize: 9.0,color: Colors.grey),),
                            ],
                          ),

                          Column(
                            children: <Widget>[
                              CircleAvatar(
                                radius: 13.0,
                                child: Icon(Icons.directions_bus),
                                backgroundColor: Colors.grey,
                                            foregroundColor: Colors.white,
                              ),
                              Text("Heavy vehicle",style: TextStyle(fontSize: 9.0,color: Colors.grey),),
                            ],
                          ),

                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),

            Container(
              height: 400,
              decoration: BoxDecoration(
                  // border: Border.all()
              ),
              child: Column(
                children: <Widget>[
                  DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      isExpanded: true,
                      elevation: 0,
                      value: _chooseValue,
                      items: <String>['Select vehicle make'].map<DropdownMenuItem<String>>((String value){
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value,style: TextStyle(fontSize: 13.0,fontWeight: FontWeight.w700),),
                        );
                      }
                      ).toList(),
                      onChanged: (String? value){
                        setState(() {
                          _chooseValue = value!;
                        });
                      },
                      icon: Icon(Icons.arrow_drop_down,color: Colors.blue,size: 40.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0,left: 8.0,right: 8.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Enter vehicle number e.g. MH02CV3666", hintStyle: TextStyle(fontSize: 12.0)
                         ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          width: 270,
                          child: TextField(
                            decoration: InputDecoration(

                                hintText: "Device UID", hintStyle: TextStyle(fontSize: 12.0)
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 25.0,left: 10),
                          child: Icon(Icons.smartphone),
                        ),
                      ],
                    ),
                   //
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Device IMEI Number", hintStyle: TextStyle(fontSize: 12.0)
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      width: 320,
                      child: ElevatedButton(
                          onPressed: null,
                          child: Text("Save",style: TextStyle(color: Colors.white,fontSize: 10.0),),
                          style:ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.blue))),
                    ),
                  )
                ],
              ),
            ),

          ],
        ),
      )

    );
  }
}