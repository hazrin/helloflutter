import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:staff_dir/models/stafdata.dart';
import 'package:staff_dir/views/staf_list.dart';

class StaffFormPage extends StatefulWidget {
  const StaffFormPage({Key? key}) : super(key: key);

  @override
  State<StaffFormPage> createState() => _StaffFormPageState();
}

class _StaffFormPageState extends State<StaffFormPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _jawController = TextEditingController();
  final TextEditingController _nohpController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _jawController.dispose();
    _nohpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form of Staffs'),
      ),
      
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
                child: Image(image: AssetImage('images/staff.png'))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: _nameController,
              keyboardType: TextInputType.text,
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp('[a-zA-Z ]')),
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
              controller: _jawController,
              keyboardType: TextInputType.text,
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp('[a-zA-Z ]')),
              ],
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'staf\'s jawatan',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: _nohpController,
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp('[0-9]')),
              ],
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'staf\'s handphone no',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              child:
                  const Text('Save / update', style: TextStyle(fontSize: 20)),
              onPressed: () {
                StaffsData stafdata = StaffsData(_nameController.text,
                    _jawController.text, int.tryParse(_nohpController.text));
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            StaffListPage(stafdataparam: stafdata)));
              },
            ),
          ),
        ],
      ),
    );
  }
}
