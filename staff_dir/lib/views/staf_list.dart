import 'package:flutter/material.dart';
import 'package:staff_dir/models/stafdata.dart';

class StaffListPage extends StatefulWidget {
  final StaffsData? stafdataparam;
  const StaffListPage({Key? key, this.stafdataparam}) : super(key: key);

  @override
  State<StaffListPage> createState() => _StaffListPageState();
}

class _StaffListPageState extends State<StaffListPage> {
  StaffsData? _stafdata;

  @override
  void initState() {
    _stafdata = widget.stafdataparam;
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Staff List'),
        actions: const [Icon(Icons.add)],
      ),
      body: ListView(
        children: [
          ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('images/staff.png'),
              ),
              title: const Text('Melaka'),
              trailing: Wrap(
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.edit,
                      color: Colors.blue,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                    onPressed: () {},
                  ),
                ],
              )),
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage('images/staff.png'),
            ),
            title: Text(_stafdata!.name!),
            subtitle: Text(_stafdata!.jawatan!),
            trailing: Wrap(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.edit,
                    color: Colors.blue,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                  onPressed: () {},
                ),
              ],
            ), //Image.asset('images/houseicon.png'),
          ),
        ],
      ),
    );
  }

}
