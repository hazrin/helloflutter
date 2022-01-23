import 'package:flutter/material.dart';
import 'package:staff_dir/views/staf_form.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main page'),
        actions: const [Icon(Icons.home)],
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Staff Form'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const StaffFormPage()));
              },
            ),
          ],
        ), // Populate the Drawer in the next step.
      ),
      body: Container(
        padding: const EdgeInsets.all(2),
        height: 120,
        child: Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('images/houseicon.png'),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text('Name',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('Description'),
                      Text('Price')
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
