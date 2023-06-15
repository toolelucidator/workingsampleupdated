import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tuple/tuple.dart';
import 'package:workingsample/constants/constants.dart';
import 'package:get/get.dart';
import 'package:workingsample/controller/auth_Controller.dart';
import 'package:workingsample/controller/home_controller.dart';

class Home extends StatelessWidget {
  Home({super.key});

  //var user;
  User? usr = HomeController().setUserinfo();
  final TextEditingController _ticket = TextEditingController();

  final TextEditingController _area = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //print(user.toString().split(','));
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample App'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                authController.signOut();
              },
              icon: Icon(
                Icons.logout_sharp,
                color: Colors.white,
              ))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(usr!.email.toString()),
            Text('Welcome to the app'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Ticket Number: '),
                SizedBox(
                  width: 100,
                  child: TextField(
                    controller: _ticket,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Area: '),
                SizedBox(
                  width: 100,
                  child: TextField(
                    controller: _area,
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/ticket',
                    arguments: Tuple2(_ticket.text, _area.text));
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
