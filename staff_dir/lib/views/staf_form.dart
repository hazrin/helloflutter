import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StaffFormPage extends StatelessWidget {
  const StaffFormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form of Staffs'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              keyboardType: TextInputType.text,
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp('[a-zA-Z]')),
              ],
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'staf\'s name',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp('[1-9]')),
              ],
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'staf\'s age',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              child: const Text('Save / update', style: TextStyle(fontSize: 20)),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
