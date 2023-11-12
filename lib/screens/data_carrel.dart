import 'package:flutter/material.dart';
import 'package:carrel/main.dart';
import 'package:carrel/screens/carrel_form.dart';
import 'package:carrel/widgets/left_drawer.dart';
import 'package:carrel/widgets/globals.dart' as globals;

class DataCarPage extends StatefulWidget {
  const DataCarPage({super.key});

  @override
  State<DataCarPage> createState() => _DataCarState();
}

class _DataCarState extends State<DataCarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Car'),
      ),
      drawer: const LeftDrawer(),
      body: Center(
          child: ListView.builder(
            itemCount: globals.semuaCar.length,
            itemBuilder: ((context, index) {
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: Material(
                    elevation: 2.0,
                    borderRadius: BorderRadius.circular(5.0),
                    shadowColor: Colors.blueGrey,
                    child: ListTile(
                      title: Text(globals.semuaCar[index].name),
                      subtitle: Text(globals.semuaCar[index].description),
                      trailing: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("Jumlah : ${globals.semuaCar[index].amount}")
                          ]),
                    )),
              );
            }),
          )),
    );
  }
}