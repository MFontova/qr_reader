import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/utils/utils.dart';
import 'package:url_launcher/url_launcher.dart';

import '../providers/scan_list_provider.dart';

class ScanTiles extends StatelessWidget {
  const ScanTiles({super.key, required this.tipo});

  final String tipo;

  @override
  Widget build(BuildContext context) {
    final scanListProvider = Provider.of<ScanListProvider>(context);

    return ListView.builder(
      itemCount: scanListProvider.scans.length,
      itemBuilder: (context, index) => Dismissible(
        key: UniqueKey(),
        background: Container(
          color: Colors.red,
        ),
        onDismissed: (DismissDirection direction) {
          Provider.of<ScanListProvider>(context, listen: false)
              .borrarScanPorId(scanListProvider.scans[index].id);
        },
        child: ListTile(
            leading:
                Icon(tipo == 'http' ? Icons.home_outlined : Icons.map_outlined),
            title: Text(scanListProvider.scans[index].valor),
            subtitle: Text(scanListProvider.scans[index].id.toString()),
            trailing: Icon(
              Icons.keyboard_arrow_right,
              color: Colors.grey,
            ),
            onTap: () => launchURL(context, scanListProvider.scans[index])),
      ),
    );
  }
}
