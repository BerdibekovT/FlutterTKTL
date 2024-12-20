// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:sup/models/car.dart';
import 'package:sup/pages/cardescriptionpage.dart';


class CarsPage extends StatelessWidget {
  const CarsPage({super.key});
  static const String route = '/carspage';

 

  @override
  Widget build(BuildContext context) {
     final List<Cars> car = [
    Cars(name: "Aston Martin", model: "DBS", horsepowers: 600, probeg: 20000),
    Cars(name: "Dodge", model: "Challenger", horsepowers: 900, probeg: 32000),
    Cars(name: "Chevrolet", model: "Corvette", horsepowers: 700, probeg: 232000),
    Cars(name: "Audi", model: "RS7", horsepowers: 760, probeg: 52000),    
  ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Cars"),
      ),
      body: ListView.builder(
        itemCount: car.length,
        itemBuilder: (context, index){
          final Cars = car[index];
          return ListTile(
            title: Text(Cars.name),
            subtitle: Text("Probeg: ${Cars.probeg}"),
            trailing: Icon(Icons.arrow_right),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CarDetailPage(car: Cars),
                )
              );
            },
          );
        },
      ),
    );
  }
}