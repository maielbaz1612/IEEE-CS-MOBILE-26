import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/task_cubit.dart';
import 'cubit/task_state.dart';

class add_task extends StatefulWidget {
  const add_task({super.key});

  @override
  State<add_task> createState() => _add_taskState();
}

class _add_taskState extends State<add_task> {
  final TextEditingController _controller = TextEditingController();
  String? _errorMessage;
  bool _isLoading = false;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handleAdd() async {
    final taskTitle = _controller.text.trim();

    if (taskTitle.isEmpty) {
      setState(() {
        _errorMessage = 'Please enter a task';
      });
      return;
    }

    setState(() {
      _errorMessage = null;
      _isLoading = true;
    });

    try {
      print('Calling addTask with: $taskTitle'); // DEBUG
      await context.read<TaskCubit>().addTask(taskTitle);
      print('AddTask completed'); // DEBUG

      await Future.delayed(Duration(milliseconds: 100));

      if (mounted) {
        print('Closing bottom sheet'); // DEBUG
        Navigator.pop(context);
      }
    } catch (error) {
      print('Error in _handleAdd: $error'); // DEBUG
      if (mounted) {
        setState(() {
          _isLoading = false;
          _errorMessage = 'Failed to add task: $error';
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<TaskCubit, TaskState>(
      listener: (context, state) {
        print('State changed to: $state');

        if (state is TaskLoaded) {
          Navigator.pop(context);
        } else if (state is TaskError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.message)),
          );
        }
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.yellow[100],
            borderRadius: const BorderRadius.all(Radius.circular(15))
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "Add Task",
              style: TextStyle(
                  color: Colors.lightGreen,
                  fontSize: 25,
                  fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 20),

            TextField(
              controller: _controller,
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (_) {
                if (_errorMessage != null) {
                  setState(() => _errorMessage = null);
                }
              },
              decoration: InputDecoration(
                hintText: 'Enter task...',
                errorText: _errorMessage,
                errorStyle: const TextStyle(color: Colors.red, fontSize: 12),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: Colors.lightGreen, width: 2),
                ),
              ),
            ),

            const SizedBox(height: 20),

            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(15))
              ),
              width: 200,
              child: TextButton(
                onPressed: () {
                  final taskTitle = _controller.text.trim();
                  if (taskTitle.isNotEmpty) {
                    context.read<TaskCubit>().addTask(taskTitle);
                  }
                },
                child: _isLoading
                    ? const SizedBox(
                  height: 20,
                  width: 20,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.lightGreen),
                  ),
                )
                    : const Text(
                  "Add",
                  style: TextStyle(
                      color: Colors.lightGreen,
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}