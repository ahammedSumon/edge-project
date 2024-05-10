import 'package:flutter/material.dart';
import 'package:planner/pages/widgets/DoneTasks.dart';

Widget Concluded() {
  bool showDetails = false;

  List<List<String>> taskList = [
    ['0', 'Development meeting', '10:00 - 11:00', 'Remote'], 
    ['1', 'Planning meeting', '10:00 - 11:00', 'Remote'], 
    ['1', 'asd meeting', '10:00 - 11:00', 'Remote'], 
    ['1', 'Meeting to be', '10:00 - 11:00', 'Remote'], 
    ['1', 'qse Meeting', '10:00 - 11:00', 'In person'], 
    ['2', 'Meeting suporte web', '10:00 - 11:00', 'Remote'], 
    ['2', 'Meeting suporte web', '10:00 - 11:00', 'Remote'], 
    ['3', 'Yoga Class', '10:00 - 11:00', 'In person'], 
    ['3', 'Yoga Class', '10:00 - 11:00', 'In person'], 
  ];

  return DoneTasks(taskList.take(7).toList());
}