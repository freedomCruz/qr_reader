import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/providers/scan_list_provider.dart';

class DireccionesPage extends StatelessWidget {
   
  const DireccionesPage({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
     final scanListProvider = Provider.of<ScanListProvider>(context);
     final scans = scanListProvider.scans;

    return ListView.builder(
      itemCount: scans.length, 
      itemBuilder:(context, i) => ListTile(
        leading: const Icon(Icons.add_location_alt_sharp, color: Colors.deepPurple),
        title: Text(scans[i].valor),
        subtitle: Text(scans[i].id.toString()),
        trailing: const Icon(Icons.keyboard_arrow_right, color: Colors.grey),
        onTap: () => print('Direccción para mí.'),
      ),
    );
  }
}