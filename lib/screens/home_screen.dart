import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/providers/db_provider.dart';
import 'package:qr_reader/providers/scan_list_provider.dart';
import 'package:qr_reader/screens/directions_screen.dart';
import 'package:qr_reader/screens/maps_history_screen.dart';
import 'package:qr_reader/widgets/scan_button.dart';
import '../providers/ui_provider.dart';
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
    final uiProvider = Provider.of<UiProvider>(context);

    final currentIndex = uiProvider.selectedMenuOpt;

    // TODO temporal leer db
    // final tempScan = ScanModel(valor: 'https://google.com');
    // DBProvider.db.nuevoScan(tempScan);
    // DBProvider.db.getScanById(6).then((scan) => print(scan!.valor));
    // DBProvider.db.deleteAllScans().then(print);

    final scanListProvider =
        Provider.of<ScanListProvider>(context, listen: false);

    switch (currentIndex) {
      case 0:
        scanListProvider.cargarScansPorTipo('geo');
        return MapsScreen();
      case 1:
        scanListProvider.cargarScansPorTipo('http');
        return DirectionsScreen();
      default:
        return MapsScreen();
    }
  }
}
