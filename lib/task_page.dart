import 'package:flutter/material.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  var text = TextEditingController();
  var _textButton = 'OFF';
  var _textButtonColor = Colors.red;
  var isOpen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Task 1'),
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            TextFormField(
              autofocus: true,
              onChanged: (value) {
                setState(() {
                  text.text = value;
                });
              },
              controller: text,
              decoration: InputDecoration(
                  labelText: 'Enter some text',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12))),
            ),
            const SizedBox(height: 10),
            Text(
              'you typed: ${text.text}',
              style: const TextStyle(fontSize: 20),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isOpen = !isOpen;
                });
              },
              style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                      isOpen ? Colors.green : Colors.red),
                  foregroundColor: const WidgetStatePropertyAll(Colors.white)),
              child: Text(
                isOpen ? _textButton = 'ON' : _textButton = 'OFF',
                style: const TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
