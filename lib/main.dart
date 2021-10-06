import 'package:flutter/material.dart';
import 'package:internship_app/statistics.dart';
import 'package:line_icons/line_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


import 'dailyrides.dart';


void main() => runApp(const App());

class App extends StatelessWidget{
  const App({Key? key}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StateWidget(),
    );
  }
}

class StateWidget extends StatefulWidget{
  const StateWidget({Key? key}) : super(key: key);


  @override
  State<StateWidget> createState() => _MyState();
}

class _MyState extends State<StateWidget> with SingleTickerProviderStateMixin{


  List<String> titles = ["Dashboard","Daily Rides","Statistics","Notifications"];
  bool switchButton = true;


  late TabController tabController;
  late String title;

  void initState(){
    title = titles[0];
    tabController = TabController(length: 4,vsync: this);
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
  Widget build(BuildContext context) {
     return Scaffold(
       drawer: SafeArea(
         child: Drawer(
           child: ListView(
             children: <Widget>[
               DrawerHeader(
                 decoration: BoxDecoration(
                   color: Colors.black
                 ),
                   child: Text('Drawer'))
             ],
           ),
         ),
       ),
       appBar: AppBar(
         iconTheme: IconThemeData(color: Colors.black),
         leading: Padding(
           padding: const EdgeInsets.all(1.0),
           child: Builder(
             builder: (context) =>
                 IconButton(
                   icon: Icon(LineIcons.bars,size: 30.0,),
                   onPressed: () => Scaffold.of(context).openDrawer(),
                 ),
           )
         ),
         elevation: 1.0,
         backgroundColor: Colors.grey.shade200,
         title: Text(title,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 19.0),),
         actions: [
           title == "Dashboard" ?
           Padding(
             padding: const EdgeInsets.all(14.0),
             child: Icon(
               Icons.share,
               color: Colors.black,
             ),
           )
           : title == "Daily Rides" ?
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
           Center(child: Text('First')),
           DailyRides(),
           Statistics(),
           Center(child: Text('Fourth')),
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
             // Tab(child: SvgPicture.asset("assets/images/guage.svg",color: Colors.blue,),),
             // Tab(icon: SvgPicture.asset("assets/images/direction.svg",),),
             Tab(icon: FaIcon(FontAwesomeIcons.tachometerAlt,size: 20.0,),),// Didn't found the meter icon, replaced with other icon
             Tab(icon: FaIcon(FontAwesomeIcons.route,size: 20.0,),),// Didn't found the route icon, replaced with other icon
             Tab(icon: Icon(LineIcons.barChartAlt,size: 20.0,),),// Didn't found the filled bar icon, replaced with other icon
             Tab(icon: Icon(Icons.notifications,size: 20.0,)),
             // Tab(icon: FaIcon(FontAwesomeIcons.bell),),
           ],
         ),
       )
     );
  }
}



