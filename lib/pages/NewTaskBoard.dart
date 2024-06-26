// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:planner/controller/TaskController.dart';
import 'package:planner/pages/Home.dart';

class BoardCreator extends StatefulWidget {
  BoardCreator({super.key});

  @override
  State<BoardCreator> createState() => _BoardCreatorState();
}

class _BoardCreatorState extends State<BoardCreator> {
  click() {
    print('aoao');
  }

  DateTime dateTime = DateTime.now();

  String? colour;

  bool _isChecked0 = false; 
  bool _isChecked1 = false; 
  bool _isChecked2 = false; 
  bool _isChecked3 = false; 


  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    if (_isChecked0) {
      colour = '0';
    } else if (_isChecked1) {
      colour = '1';
    } else if (_isChecked2) {
      colour = '2';
    } else {
      colour = '3';
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        foregroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height:MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.only(top: 40),
          decoration: const BoxDecoration(color: Colors.white,
            borderRadius:
              BorderRadius.only(
                topLeft: Radius.circular(18),
                topRight: Radius.circular(18),),
          ),
          child: Column(
            children: [
              SizedBox(width: MediaQuery.of(context).size.width*0.83,
                child: const Text("Name", style: TextStyle(fontSize: 18),)),
              SizedBox(
                width: MediaQuery.of(context).size.width*0.85,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: textController,
                    decoration: InputDecoration(
                      fillColor: Colors.grey,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        borderSide: BorderSide(color: Colors.grey)),
                      hintText: 'Enter the name of the new board'
                      ),
                  ),
                ),
              ),
              SizedBox(height: 20),
            
              SizedBox(width: MediaQuery.of(context).size.width*0.83,
                child: const Text("Color", style: TextStyle(fontSize: 18),)),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Transform.scale(
                    scale: 2.8,
                    child: Checkbox(
                      fillColor: MaterialStatePropertyAll(Theme.of(context).colorScheme.primary),
                      side: MaterialStateBorderSide.resolveWith(
                          (states) => BorderSide(width: 0),
                      ),
                      value: _isChecked0,
                      onChanged: (bool? value) {
                        setState(() {
                        _isChecked0 = value!;
                        _isChecked1 = false;
                        _isChecked2 = false;
                        _isChecked3 = false;
                      });
                    },
                    ),
                  ),
                  Transform.scale(
                    scale: 2.8,
                    child: Checkbox(
                      fillColor: MaterialStatePropertyAll(Theme.of(context).colorScheme.secondary),
                      side: MaterialStateBorderSide.resolveWith(
                        (states) => BorderSide(width: 0),
                      ),
                      value: _isChecked1,
                      onChanged: (bool? value) {
                        setState(() {
                        _isChecked0 = false;
                        _isChecked1 = value!;
                        _isChecked2 = false;
                        _isChecked3 = false;
                      });
                    },
                    ),
                  ),
                  Transform.scale(
                    scale: 2.8,
                    child: Checkbox(
                      fillColor: MaterialStatePropertyAll(Theme.of(context).colorScheme.tertiary),
                      side: MaterialStateBorderSide.resolveWith(
                        (states) => BorderSide(width: 0),
                      ),
                      value: _isChecked2,
                      onChanged: (bool? value) {
                        setState(() {
                        _isChecked0 = false;
                        _isChecked1 = false;
                        _isChecked2 = value!;
                        _isChecked3 = false;
                      });
                    },
                    ),
                  ),
                  Transform.scale(
                    scale: 2.8,
                    child: Checkbox(
                      fillColor: MaterialStatePropertyAll(Theme.of(context).colorScheme.surface),
                      side: MaterialStateBorderSide.resolveWith(
                        (states) => BorderSide(width: 0),
                      ),
                      value: _isChecked3,
                      onChanged: (bool? value) {
                        setState(() {
                        _isChecked0 = false;
                        _isChecked1 = false;
                        _isChecked2 = false;
                        _isChecked3 = value!;
                      });
                    },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50),
            
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Theme.of(context).colorScheme.error
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    )
                  )
                ),
                onPressed: () {
                  TaskPlannerController tpc = TaskPlannerController();
                  tpc.createTaskBoard(textController.text, colour!);
                  Navigator.pop(context);
                },
                child: Text("Save", style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w900, fontSize: 18, color: Colors.white),),),
              ],
          ),
        ),
      )
    );
  }
}