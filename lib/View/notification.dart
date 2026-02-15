import 'package:flutter/material.dart';

class Notificationscreen extends StatefulWidget {
  const Notificationscreen({Key? key}) : super(key: key);

  @override
  State<Notificationscreen> createState() => _NotificationscreenState();
}

class _NotificationscreenState extends State<Notificationscreen> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 15,),
             Text("not"),
          ],
        ),
      ),
    );
  }
}
