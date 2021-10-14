import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
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
        title: Text("My profile",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 19.0),),
      ),

        body: ListView(

        children: <Widget>[

         Container(
           decoration: BoxDecoration(
             border: Border(top: BorderSide(color: Colors.grey.shade300)),
           ),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: <Widget>[
               Row(
                 mainAxisAlignment: MainAxisAlignment.end,
                 crossAxisAlignment: CrossAxisAlignment.end,
                 children: [
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: SizedBox(
                     width: 25.0,
                     height: 25.0,
                       child: FloatingActionButton(
                         child: Icon(Icons.edit),
                         backgroundColor: Colors.blue,
                         foregroundColor: Colors.white,
                         onPressed: () {  },
                       ),
                     ),
                   ),

                 ],
               ),
               Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: CircleAvatar(
                   backgroundImage: AssetImage("assets/images/heart.jpg"),
                    radius: 80.0,
               ),

                ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text('test1234',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),

             ],
             ),
         ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 180.0,
              width: 50.0,
              child: Card(
                margin: EdgeInsets.all(0.0),
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[
                   Padding(
                     padding: const EdgeInsets.only(top:8.0,left: 15.0),
                     child: Text('Profile completeness'),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(5.0),
                     child: Row(
                       children: <Widget>[
                         LinearPercentIndicator(
                           width: 260.0,
                           lineHeight: 5.0,
                           percent: 0.61,
                           backgroundColor: Colors.grey,
                           progressColor: Colors.red,

                           trailing: Icon(Icons.check_circle_outlined),

                       ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text('61%',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                        ),


                     ]
                       ),
                      ),
                        Column(
                          children: [
                            Column(
                            children: <Widget>[
                               Padding(
                                 padding: const EdgeInsets.only(left: 0.0,right: 180.0),
                                 child: Text('Last updated on 21 Sept 2021',style: TextStyle(fontSize: 10.0),),
                               ),

                            ],
                             ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0,left: 10.0,bottom: 10.0),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.email_rounded,
                                        color: Colors.blue,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Verify email to login using email address',style: TextStyle(fontSize: 12.0),),
                                      ),
                                    ],
                                  ),

                                )
                              ],

                            ),
                            Column(
                              children: <Widget>[

                                Padding(
                                  padding: const EdgeInsets.only(right: 60.0),
                                  child: Container(
                                    height: 35.0,
                                    width: 200.0,

                                    child: FlatButton( child: Text("Send verification link",style: TextStyle(color: Colors.white),),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                      color: Colors.blue,
                                      onPressed: () {},
                                    ),

                                      ),
                                )
                              ],
                            )
                                  ],
                                ),
                      ]
                       ),

                    ),
            ),
                  ),


                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 130.0,
                      width: 60.0,

                      child: Card(
                        margin: EdgeInsets.all(0.0),
                        child: Column(
                          children: <Widget>[

                            Padding(
                              padding: const EdgeInsets.only(left:0.0,right: 250.0,top: 8.0),
                              child: Text("Personal details",style:TextStyle(fontSize: 12.0,fontWeight: FontWeight.bold),),
                            ),


                            Column(
                              children: [
                                Row(
                                    children:<Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5.0,right: 60.0),
                                        child: Text("Name",style: TextStyle(fontSize: 10.0),),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.only(top:10,bottom:10.0,right: 5.0,left: 35.0),
                                            child: Text("test",style: TextStyle(fontSize: 10.0,fontWeight: FontWeight.bold),),
                                          )
                                        ],
                                      ),

                                    ]

                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 50.0,left: 5.0),
                              child: Row(
                                children: <Widget>[
                                  Text("Email address",style: TextStyle(fontSize: 10.0),),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0,left: 60.0),
                                    child: Row(
                                      children: [
                                        Text("test1234@gmail.com",style: TextStyle(fontSize: 10.0,fontWeight: FontWeight.bold),),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Text("Mobile Number",style: TextStyle(fontSize: 10.0),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top:10,bottom:10.0,right: 8.0,left: 53.0),
                                  child: Row(
                                    children: [
                                      Text("+917795368246",style: TextStyle(fontSize: 10.0,fontWeight: FontWeight.bold),),
                                    ],
                                  ),
                                )
                              ],
                            ),

                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Text("Country",style: TextStyle(fontSize: 10.0),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0,left: 87.0),
                                  child: Row(
                                    children: [
                                      Text("India",style: TextStyle(fontSize: 10.0,fontWeight: FontWeight.bold),),
                                    ],
                                  ),
                                )
                              ],
                            ),

                          ],



                        ),


                      ),
                    ),
                  ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 130.0,
              width: 60.0,
              child: Card(
                margin: EdgeInsets.all(0.0),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 160.0,top: 8.0),
                      child: Text("Medical insurance information",style:TextStyle(fontSize: 13.0,fontWeight: FontWeight.bold)),
                    ),
                    Row(
                        children:<Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0,right: 60.0),
                            child: Text("Blood Group",style: TextStyle(fontSize: 10.0),),
                          ),
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top:10,bottom:10.0,right: 3.0,left: 5.0),
                                child: Text("B+",style: TextStyle(fontSize: 10.0,fontWeight: FontWeight.bold),),
                              )
                            ],
                          ),

                        ]

                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 50.0),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: Text("Health Insurance",style: TextStyle(fontSize: 10.0),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0,left: 45.0),
                            child: Row(
                              children: [
                                Text("Bajaj Allianz life Insurance",style: TextStyle(fontSize: 10.0,fontWeight: FontWeight.bold),),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Text("Policy Number",style: TextStyle(fontSize: 10.0),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:10,bottom:10.0,right: 8.0,left: 55.0),
                          child: Row(
                            children: [
                              Text("5787543",style: TextStyle(fontSize: 10.0,fontWeight: FontWeight.bold),),
                            ],
                          ),
                        )
                      ],
                    ),

                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Text("Health Insurance Card \nNumber",style: TextStyle(fontSize: 10.0),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom:15.0,right: 8.0,left: 18.0),
                          child: Row(
                            children: [
                              Text("6fvu5cucyc",style: TextStyle(fontSize: 10.0,fontWeight: FontWeight.bold),),
                            ],
                          ),
                        )
                      ],
                    ),

                  ],



                      ),




                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Container(
                    height: 65.0,
                    width: 30.0,
                    child: Card(
                      margin: EdgeInsets.all(5.0),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top:5.0,right: 190.0),
                            child: Text("Vehicle Insurance information",style:TextStyle(fontSize: 11.0,fontWeight: FontWeight.bold)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:3.0,right: 80.0),
                            child: Text("Edit and view vehicle insurance details in vehicle settings.",style: TextStyle(fontSize: 10.0),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:3.0,right: 185.0,left: 2.0),
                            child: Text("Menu > Settings > Vehicle settings",style: TextStyle(fontSize: 10.0,fontWeight: FontWeight.bold),),
                          )
                        ],
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 55.0,
                    width: 65.0,
                    child: Card(
                      margin: EdgeInsets.all(0.0),
                       child: Column(
                         children: <Widget>[
                           Padding(
                             padding: const EdgeInsets.only(top:3.0,left:5.0,right: 240.0),
                             child: Text("Emergency contacts",style: TextStyle(fontSize: 11.0,fontWeight: FontWeight.bold),),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(top:3.0,right: 65.0),
                             child: Text("Add and edit emergency contact list in vehicle settings.",style: TextStyle(fontSize: 11.0),),
                           ),
                            Padding(
                              padding: const EdgeInsets.only(top:3.0,right: 180.0),
                              child: Text("Menu > Settings > Vehicle settings",style: TextStyle(fontSize: 10.0,fontWeight: FontWeight.bold),),
                            )
                         ],
                       ),

                        //child: Text(),




                    ),
                  ),
                ),






    ]
        )
                  );









  }
}