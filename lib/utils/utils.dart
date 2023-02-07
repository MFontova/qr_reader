import 'package:flutter/cupertino.dart';
import 'package:qr_reader/models/scan_model.dart';
import 'package:url_launcher/url_launcher.dart';

launchURL(BuildContext context, ScanModel scan) async {
  final Uri _url = Uri.parse(scan.valor);

  if (scan.type == 'http') {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  } else {
    Navigator.pushNamed(context, 'mapa', arguments: scan);
  }
}
