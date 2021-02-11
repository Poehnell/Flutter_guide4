import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  String username;


  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  int counter = 0;
  void getData() async {

    //simulate network request for a username
    String username = await Future.delayed(Duration(seconds: 3), () {
      return 'Yoshi';
    });

    //simulate netword request to get bio of username
    String title = await Future.delayed(Duration(seconds: 2), () {
      return'master ninja';
    });

    print('$username - $title');
  }


  @override
  void initState() {
    super.initState();
    getData();
    print('initStat function Ran');
  }
  @override
  Widget build(BuildContext context) {
    print('build function Ran');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose Location'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: RaisedButton(
        onPressed: (){
          setState(() {
            counter += 1;
          });
        },
        child: Text("counter is $counter"),
      ),
    );
  }
}
