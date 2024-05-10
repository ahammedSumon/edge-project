import 'package:flutter/material.dart';
import 'package:planner/pages/widgets/Tasks.dart';

Widget Next() {
  bool showDetails = false;

  List<List<String>> taskList = [
    ['0', 'Development meeting', '10:00 - 11:00', 'Remote'], 
    ['1', 'Planning Meeting', '10:00 - 11:00', 'Remote'], 
    ['1', 'asd meeting', '10:00 - 11:00', 'Remote'], 
    ['1', 'Meeting To Be', '10:00 - 11:00', 'Remote'], 
    ['1', 'qse Meeting', '10:00 - 11:00', 'In Person'], 
    ['2', 'suporte web Meeting', '10:00 - 11:00', 'Remote'], 
    ['2', 'suporte web Meeting', '10:00 - 11:00', 'Remote'], 
    ['3', 'yoga Class', '10:00 - 11:00', 'In Person'], 
    ['3', 'yoga Class', '10:00 - 11:00', 'In Person'], 
  ];

  return Tasks(taskList.take(7).toList());
}

