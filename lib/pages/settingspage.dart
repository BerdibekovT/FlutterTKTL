import 'package:flutter/material.dart';
import 'package:sup/models/car.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});
  static const String route = '/settings';


  @override
  State<SettingsPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<SettingsPage> {

  Cars myCar1 = Cars(name:"Toyota", model: 'RAV4', horsepowers: 300, probeg: 100000);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cars"),
      ),
      
    );
  }
}

