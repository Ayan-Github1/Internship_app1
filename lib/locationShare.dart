
import 'package:flutter/material.dart';


void main() => runApp(const LocationShare());

class LocationShare extends StatelessWidget{
  const LocationShare({Key?  key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LocationShareState();
  }
}

class LocationShareState extends StatefulWidget{
  const LocationShareState({Key? key}) : super(key: key);

  State<LocationShareState> createState() => LocationPage();
}

class LocationPage extends State<LocationShareState> with SingleTickerProviderStateMixin{

  List<String> titles = ["Location share"];
  bool switchButton = true;

  late TabController tabController;
  late String title;

  void initState(){
    title = titles[0];
    tabController = TabController(length: 2,vsync: this);
    tabController.addListener(changeTitle);
    super.initState();
  }

  void changeTitle(){
    setState(() {
      title = titles[tabController.index];
    });
  }

  void change(bool value){
    if(switchButton == true)
    {
      setState(() {
        switchButton = false;
      });
    }
    else
    {
      setState(() {
        switchButton = true;
      });
    }
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
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
        title: Text(title,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 19.0),),

          actions: [
         title == "Location share" ?
         Padding(
          padding: const EdgeInsets.all(14.0),

       )

        : title == "" ?
        Padding(
        padding: const EdgeInsets.all(8.0),
         child: Switch(
        onChanged: change,
        value: switchButton,
        activeTrackColor: Colors.black26,
        )
        )
            : Container(),
       ],
      ),

      body: TabBarView(
        controller: tabController,
        children: <Widget>[
          Sharedbyme(),
          Sharedwithme(),
        ],
      ),

        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            border: Border(top: BorderSide(color: Colors.grey.shade300)),
          ),
          child: TabBar(
            controller: tabController,
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.grey.shade400,
            tabs: [
              Tab(icon: Row(
                children: [
                  Icon(Icons.location_on_sharp,size: 30.0,),
                  Text('Shared by me',style: TextStyle(fontSize: 15.0),)
                ],
              ),
              ),// Didn't found the filled bar icon, replaced with other icon
              Tab(icon: Row(
                children: [
                  Icon(Icons.location_on_rounded,size: 30.0),
                  Text ('Shared with me',style: TextStyle(fontSize: 15.0),)
                ],
              ),),
              // Tab(icon: FaIcon(FontAwesomeIcons.bell),),
            ],
          ),
        )

    );
  }
}

class Sharedbyme extends StatefulWidget{
  const Sharedbyme({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return SharedbymeState();
  }
}

class SharedbymeState extends State<Sharedbyme>{

  bool switchButton = true;

  String textvalue = "";

  void change(bool value){
    if(switchButton == true)
    {
      setState(() {
        switchButton = false;
        textvalue = 'off';
      });
    }
    else
    {
      setState(() {
        switchButton = true;
         textvalue = 'on';
      });
    }
  }



  @override
  Widget build(BuildContext context)
      {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
          height: 90.0,
          width: 350.0,
          decoration: BoxDecoration(
           color: Colors.white,
            borderRadius: BorderRadius.circular(10.0)
           ),

              child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Live location sharing',style: TextStyle(fontSize: 17.0),),
                          Column(
                            children: [
                              Switch(
                                  onChanged: change,
                                  value: switchButton,
                                  activeTrackColor: Colors.black26,
                                  ),
                              Text('$textvalue', style: TextStyle(fontSize: 15.0))
                            ],
                          ),

                        ],

                      ),
                    ),
                  ),

         ),
        ),
      );
  }

}

class Sharedwithme extends StatefulWidget{
const Sharedwithme({Key? key}) : super(key: key);

@override
State<StatefulWidget> createState() {
  return SharedwithmeState();
}
}

class SharedwithmeState extends State<Sharedwithme>{

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
        body: Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(100.0),
                  child: Container(
                    height: 80.0,
                    width: 80.0,
                    child: Image.asset("assets/images/swm.jpeg"),// Didn't found the exact image, replaced with other image
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0,bottom: 0.0),
                  child: Text('All live location and rides\nshared with you will show',style: TextStyle(color: Colors.black,fontSize: 20.0),),
                ),
                Text('up here',style: TextStyle(color: Colors.black,fontSize: 20.0),),

              ],
            )
        )
    );
  }

}