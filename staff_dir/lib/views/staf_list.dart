import 'package:flutter/material.dart';
import 'package:staff_dir/models/stafdata.dart';

class StaffListPage extends StatefulWidget {
  const StaffListPage({Key? key, String? name, String? jaw, int? nohp})
      : super(key: key);

  @override
  State<StaffListPage> createState() => _StaffListPageState();
}

class _StaffListPageState extends State<StaffListPage> {
  final List<StafData> stafflist = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Staff List'),
        actions: const [Icon(Icons.add)],
      ),
      body: ListView(
        children: [ListTile()],
      ),
    );
  }

  void addStaff(String namestaf, String jawstaf, int nohpstaf) {
    final stafData = StafData(
      name: namestaf,
      jawatan: jawstaf,
      nohp: nohpstaf,
    );
    setState(() {
      stafflist.add(stafData);
    });
  }

  void deleteStaffList(String namestaf) {
    setState(() {
      stafflist.removeWhere((element) => element.name == namestaf);
    });
  }
}
