import 'package:flutter/material.dart';
import 'package:qr_reader/screens/directions_screen.dart';
import 'package:qr_reader/screens/maps_history_screen.dart';
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
      body: _HomePageBody(),
      bottomNavigationBar: CustomNavigationBar(),
      floatingActionButton: ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _HomePageBody extends StatelessWidget {
  const _HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    final currentIndex = 1;

    switch (currentIndex) {
      case 0:
        return MapsScreen();
      case 1:
        return DirectionsScreen();
      default:
        return MapsScreen();
    }
  }
}
