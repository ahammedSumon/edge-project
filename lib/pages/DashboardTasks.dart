import 'package:flutter/material.dart';
import 'package:planner/pages/widgets/NewEvent.dart';
import 'package:planner/pages/widgets/Tasks.dart';
import 'package:planner/pages/SearchPage.dart';

class DashboardTasks extends StatefulWidget {
  final List<dynamic>? list;
  final String? name;
  final List<dynamic>? taskList;

  DashboardTasks({Key? key, this.list, this.name, this.taskList});

  @override
  State<DashboardTasks> createState() => _DashboardTasksState();
}

class _DashboardTasksState extends State<DashboardTasks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 30,
        backgroundColor: Theme.of(context).colorScheme.background,
        toolbarHeight: 80,
        foregroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Check tasks",
                      style: const TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 0.9),
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "${widget.name}",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                      ),
                    ),
                  ],
                )
              ],
            ),
            IconButton(onPressed: () => print('asd'), icon: Icon(Icons.search))
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(18),
            topRight: Radius.circular(18),
          ),
        ),
        child: Tasks(widget.list),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EventCreator(),
            ),
          );
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class Tasks extends StatelessWidget {
  final List<dynamic>? tasks;

  Tasks(this.tasks);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks?.length ?? 0,
      itemBuilder: (context, index) {
        var task = tasks![index];
        return ListTile(
          title: Text(task['title'] ?? 'Untitled'),
          // Adicione outras propriedades da tarefa conforme necessário.
        );
      },
    );
  }
}
