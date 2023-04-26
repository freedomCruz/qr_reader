import 'package:flutter/material.dart';
import 'package:qr_reader/models/scan_model.dart';
import 'package:url_launcher/url_launcher.dart';


Future<void> launchUrls(BuildContext context, ScanModel scan) async {

  final Uri url = Uri.parse(scan.valor);

  if (scan.tipo == 'http') {
    // abrir el sitio web
    if (!await canLaunchUrl(url)) {
      throw Exception('Could not launch $url');
    }
    await launchUrl(url);
    
  }else{
    Navigator.pushNamed( context, 'mapa', arguments: scan);
  }
}