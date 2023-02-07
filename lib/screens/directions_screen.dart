import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/widgets/scan_tiles.dart';

import '../providers/scan_list_provider.dart';

class DirectionsScreen extends StatelessWidget {
  const DirectionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScanTiles(tipo: 'http');
  }
}
