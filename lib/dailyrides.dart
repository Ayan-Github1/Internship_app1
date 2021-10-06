import 'package:flutter/material.dart';

void main() => runApp(App1());

class App1 extends StatelessWidget{
  const App1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DailyRides(),
    );
  }
}


class DailyRides extends StatefulWidget {

  const DailyRides({Key? key}) : super(key: key);


  @override
  State<DailyRides> createState() {
    return _DailyRidesState();
  }
}

class _DailyRidesState extends State<DailyRides>{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(58.0),
              child: Container(
                height: 200.0,
                width: 200.0,
                child: Image.asset("assets/images/location.png"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0,bottom: 10.0),
              child: Text('No daily rides to show'),
            ),
            Text('Get started by taking your first ride'),

          ],
        )
      )

    );
  }
}
  
