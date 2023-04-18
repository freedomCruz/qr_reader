import 'package:flutter/material.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/providers/scan_list_provider.dart';

class MapasPage extends StatelessWidget {
   
  const MapasPage({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final scanListProvider = Provider.of<ScanListProvider>(context);
    final scans = scanListProvider.scans;
    
    return ListView.builder(
      itemCount: scans.length,
      itemBuilder:( _ , i) => ListTile(
        leading: const Icon (Icons.map, color: Colors.deepPurple),
        title: Text( scans[i].valor),
        subtitle: Text( scans[i].id.toString() ),
        trailing: const Icon(Icons.keyboard_arrow_right, color: Colors.grey),
        onTap:() => print(scans[i].id),
      )
    );
  }
}