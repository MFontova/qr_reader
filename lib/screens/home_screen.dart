import 'package:flutter/material.dart';
import 'package:qr_reader/widgets/scan_button.dart';
import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Historial'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.delete))],
        elevation: 0,
      ),
      body: Container(
        child: Center(child: Text('Home Screen')),
      ),
      bottomNavigationBar: CustomNavigationBar(),
      floatingActionButton: ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
