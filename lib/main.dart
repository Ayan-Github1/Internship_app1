import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internship_app/statistics.dart';
import 'package:line_icons/line_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'AddMoreVehicle.dart';
import 'Dashboard.dart';
import 'dailyrides.dart';
import 'locationShare.dart';
import 'myProfile.dart';
import 'notifications.dart';


void main() => runApp(const App());

class App extends StatelessWidget{
  const App({Key? key}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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

               //Root container holding all widgets in the drawer header
               Container(
                 height: 245.0,
                 child: DrawerHeader(
                     margin: EdgeInsets.all(0.0),
                     padding: EdgeInsets.all(0.0),
                     decoration: BoxDecoration(
                     color: Colors.grey.shade200
                   ),
                     child: Column(
                       children: [

                         Container(
                           child: Padding(
                             padding: const EdgeInsets.only(top: 28.0,left: 14.0,bottom: 20.0),
                             child: Row(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: <Widget>[
                                 CircleAvatar(
                                   backgroundImage: AssetImage('assets/images/heart.jpg'),// Unable to find the exact image. Replaced with other image
                                   radius: 40.0,
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.only(left: 12.0,top: 5.0),
                                   child: Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: <Widget>[
                                       Text('test1234',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                                       Text('Profile completeness 61%',style: TextStyle(fontSize: 10.0,color: Colors.red),),
                                       Text('View and edit profile',style: TextStyle(fontSize: 11.0,color: Colors.grey),),
                                     ],
                                   ),
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.only(top: 14.0,left: 15.0),
                                   child: IconButton(
                                     onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => MyProfile())),
                                     icon: Icon(Icons.chevron_right_outlined,size: 20.0,),
                                   ),
                                 )
                               ],
                             ),
                           ),
                         ),

                         Divider(),

                         Padding(
                           padding: const EdgeInsets.only(left: 25.0,right: 13.0),
                           child: Container(
                             height: 90.0,
                             child: Row(
                               children: <Widget>[
                                 FaIcon(FontAwesomeIcons.motorcycle,color: Colors.grey,),//Didn't found the exact icon, replaced with another icon
                                 Padding(
                                   padding: const EdgeInsets.only(top: 15.0,left: 20.0),
                                   child: Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: <Widget>[
                                       Text('Selected',style: TextStyle(color: Colors.grey,fontSize: 10.0),),
                                       Row(
                                         children: <Widget>[
                                           Text('MH02TH7890',style: TextStyle(color: Colors.grey.shade600,fontSize: 20),),
                                           Icon(Icons.warning_amber,color: Colors.orange,size: 15.0)//didn't found the exact icon, replaced with another icon
                                         ],
                                       ),
                                       Padding(
                                         padding: const EdgeInsets.only(top: 7.0),
                                         child: Text.rich(
                                             TextSpan(
                                               text: '1199 Panigale',
                                               style: TextStyle(color: Colors.grey,fontSize: 18),
                                               children: [
                                                 TextSpan(
                                                   text: ' Secure Bike',
                                                   style: TextStyle(color: Colors.orange,fontSize: 10.0)
                                                 )
                                               ]
                                             )
                                         ),
                                       )
                                     ],
                                   ),
                                 )
                               ],
                             ),
                           ),
                         )
                       ],
                     ),
                 ),
               ),
               ListTile(
                 leading: Padding(
                   padding: const EdgeInsets.only(left: 9.0),
                   child: Icon(Icons.video_settings_outlined,color: Colors.black,),//didn't found the exact icon, replaced with another icon
                 ),
                 title: Text('Show exported rides',style: TextStyle(color: Colors.black54)),
               ),

               ListTile(
                 leading: Padding(
                   padding: const EdgeInsets.only(left: 9.0),
                   child: Icon(Icons.local_gas_station,color: Colors.black,),
                 ),
                 title: Text('Fuel logs',style: TextStyle(color: Colors.black54)),
               ),


               //This specific list tile has an onclick event which takes us to the Location screen
               ListTile(
                 leading: Padding(
                   padding: const EdgeInsets.only(left: 9.0),
                   child: Icon(Icons.share,color: Colors.black,),
                 ),
                 title: Text('Location share',style: TextStyle(color: Colors.black54)),
                 onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => LocationShare())),
               ),


               //This specific list tile has an onclick event which takes us to the Settings screen
               ListTile(
                 leading: Padding(
                   padding: const EdgeInsets.only(left: 9.0),
                   child: Icon(Icons.settings,color: Colors.black,),
                 ),
                 title: Text('Settings',style: TextStyle(color: Colors.black54)),
                 onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Settings())),
               ),

               ListTile(
                 leading: Padding(
                   padding: const EdgeInsets.only(left: 9.0),
                   child: Icon(Icons.help_rounded,color: Colors.black,),
                 ),
                 title: Text('Help & Suggestion',style: TextStyle(color: Colors.black54)),
               ),

               ListTile(
                 leading: Padding(
                   padding: const EdgeInsets.only(left: 9.0),
                   child: Icon(Icons.add_to_photos_sharp,color: Colors.black,),
                 ),
                 title: Text('Add more vehicle',style: TextStyle(color: Colors.black54)),
                 onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => AddMoreVehicle())),
               ),

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
           MyDashboard(),
           DailyRides(),
           Statistics(),
           Notifications(),
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

           ],
         ),
       )
     );
  }
}

class Settings extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2.0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text('Settings',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.grey.shade200,
      ),


      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.grey.shade200,
          child: Column(
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: ListTile(
                  horizontalTitleGap: 8.5,
                  leading: Padding(
                    padding: const EdgeInsets.only(top: 10.0,left: 8.0),
                    child: Icon(Icons.language,size: 22.0,color: Colors.black,),//didn't found the exact icon, replaced with another icon
                  ),
                  title: Text('Choose language',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500)),
                  subtitle: Text('Language applies to app & emergency call',style: TextStyle(fontSize: 12.0),),
                  trailing: Icon(Icons.chevron_right_outlined,size: 20.0,),
                ),
              ),

              //This specific list tile has an onclick event for an icon as well as to list tile which takes us to the Profile screen
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: ListTile(
                  horizontalTitleGap: 8.5,
                  leading: Padding(
                    padding: const EdgeInsets.only(top: 10.0,left: 8.0),
                    child: Icon(Icons.account_circle,size: 22.0,color: Colors.black,),
                  ),
                  title: Text('My Profile',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500)),
                  subtitle: Text('View and edit your profile details',style: TextStyle(fontSize: 12.0),),
                  trailing: IconButton(icon: Icon(Icons.chevron_right_outlined,size: 20.0,),
                    padding: EdgeInsets.only(left: 24.0),
                    onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => MyProfile())),),
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => MyProfile())),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 12.0,bottom: 15.0),
                child: ListTile(
                  horizontalTitleGap: 8.5,
                  minVerticalPadding: 15.0,
                  leading: Padding(
                    padding: const EdgeInsets.only(left: 8.0,top: 12.0),
                    child: Icon(Icons.filter_tilt_shift,size: 22.0,color: Colors.black,),//didn't found the exact icon, replaced with another icon
                  ),
                  title: Text('Vehicle settings',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500)),
                  subtitle: Text('Add, edit or delete vehicles. Add or edit vehicle insurance details',style: TextStyle(fontSize: 12.0),),
                  trailing: Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Icon(Icons.chevron_right_outlined,size: 20.0,),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: ListTile(
                  horizontalTitleGap: 8.5,
                  leading: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Icon(Icons.settings_backup_restore_sharp,size: 22.0,color: Colors.black,),//didn't found the exact icon, replaced with another icon
                  ),
                  title: Text('Backup',style: TextStyle(fontWeight: FontWeight.w500)),
                  trailing: Icon(Icons.chevron_right_outlined,size: 22.0,),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: ListTile(
                  horizontalTitleGap: 8.5,
                  leading: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Icon(Icons.settings_backup_restore_sharp,size: 22.0,color: Colors.black,),//didn't found the exact icon, replaced with another icon
                  ),
                  title: Text('Current sessions',style: TextStyle(fontWeight: FontWeight.w500)),
                  trailing: Icon(Icons.chevron_right_outlined,size: 22.0,),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: ListTile(
                  horizontalTitleGap: 8.5,
                  leading: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Icon(Icons.settings,size: 22.0,color: Colors.black,),
                  ),
                  title: Text('Additional Settings',style: TextStyle(fontWeight: FontWeight.w500)),
                  trailing: Icon(Icons.chevron_right_outlined,size: 22.0,),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: ListTile(
                  horizontalTitleGap: 8.5,
                  leading: Padding(
                    padding: const EdgeInsets.only(top: 8.0,left: 8.0),
                    child: Icon(Icons.lock_sharp,size: 22.0,color: Colors.black,),
                  ),
                  title: Text('Change Password',style: TextStyle(fontWeight: FontWeight.w500)),
                  subtitle: Text('Change password & logout from all phones',style: TextStyle(fontSize: 12.0),),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: ListTile(
                  horizontalTitleGap: 8.5,
                  leading: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Icon(Icons.star,size: 22.0,color: Colors.black,),
                  ),
                  title: Text('Rate us on Play Store',style: TextStyle(fontWeight: FontWeight.w500)),
                ),
              ),

            ]
          ),
        ),
      ),
    );
  }
}



