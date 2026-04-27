import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do/add_task.dart';
import 'package:to_do/setting.dart';
import 'package:to_do/tasks.dart';
import 'cubit/task_cubit.dart';
import 'cubit/task_state.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.event_note_outlined), label: 'Note')
        ],
        selectedItemColor: Colors.lightGreen[900],
        iconSize: 30,
        backgroundColor: Colors.yellow[100],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final taskCubit = context.read<TaskCubit>();

          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) => BlocProvider.value( 
              value: taskCubit,
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: const add_task(),
                ),
              ),
            ),
          );
        },
        backgroundColor: Colors.lightGreen[900],
        child: const Icon(Icons.add, size: 30, color: Colors.white),
      ),
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        backgroundColor: Colors.yellow[200],
        actions: [
          PopupMenuButton(
            color: Colors.lightGreen[900],
            iconColor: Colors.lightGreen[900],
            itemBuilder: (context) => [
              PopupMenuItem(
                child: const Text("Settings", style: TextStyle(color: Colors.white, fontSize: 17)),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (contest) => setting()));
                },
              )
            ],
          )
        ],
      ),
      body: BlocBuilder<TaskCubit, TaskState>(
        builder: (context, state) {
          if (state is TaskLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is TaskLoaded) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text("To-Do", style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold)),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    child: Tasks(taskss: state.tasks),
                  ),
                )
              ],
            );
          } else if (state is TaskError) {
            return Center(child: Text('Error: ${state.message}'));
          }
          return const SizedBox();
        },
      ),
    );
  }
}