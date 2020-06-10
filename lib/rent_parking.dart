import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/authMode.dart';
import 'auth/login.dart';
import 'auth/login.dart';
import 'auth/login.dart';
import 'global_widgets/drawer.dart';
import '../scoped_models/main.dart';

class RentParking extends StatefulWidget {
  final MainModel model;

  RentParking(this.model);

  @override
  State<StatefulWidget> createState() {
    return RentParkingState();
  }
}

class RentParkingState extends State<RentParking> {
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();

  final phoneTextController = TextEditingController(text: phoneNo);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/rent_parking.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          constraints: BoxConstraints.expand(),
          child: Padding(
            padding: EdgeInsets.only(left: 100.0, right: 100.0, bottom: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Card(
                  elevation: 1.0,
                  color: Color(0xFFCDF0FC),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.black,
                    ),
                    title: Text(phoneNo),
                  ),
                ),
                Divider(),
//                TextField(
//                  controller: phoneTextController,
//                  decoration: InputDecoration(
//                    prefixIcon: Icon(
//                      Icons.phone,
//                      color: Colors.black,
//                    ),
//                    focusColor: Colors.lightBlueAccent,
//                    enabledBorder: UnderlineInputBorder(
//                      borderSide: BorderSide(
//                        color: Colors.black,
//                        width: 2.0,
//                      ),
//                    ),
//                  ),
//                ),

                Material(
                  elevation: 5.0,
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(30.0),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(
                          context, '/rent-parking-registeration');
                    },
                    minWidth: 200.0,
                    height: 42.0,
                    child: Text(
                      'Continue',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
