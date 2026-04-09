import 'package:flutter/material.dart';
import 'package:salma_application_4/widgets/chip_widget.dart';
import 'package:salma_application_4/widgets/header_widget.dart';
import 'package:salma_application_4/widgets/quest_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Adventure Salma',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Salma Aulia Nisa",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.deepOrange,
            ),
          ),
          backgroundColor: Colors.green,
        ),
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeaderWidget(name: 'Salma',role: 'Archer',level: 10,),
              const SizedBox(height: 12),
              Row(
                children: const [
                  ChipWidget(warna: Colors.red,icon: Icons.favorite,label: "HP:",value: 100),
                  ChipWidget(warna: Color.fromARGB(255, 32, 241, 13),icon: Icons.accessibility_new,label: "HP:",value: 99,),
                ],
              ),
              Text("Quest List"),
              QuestWidget()
            ],
          ),
        ),
      ),
    );
  }
}