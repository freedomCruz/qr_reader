
import 'package:flutter/material.dart';
import 'package:qr_reader/providers/db_provider.dart';

class ScanListProvider extends ChangeNotifier {

  List<ScanModel> scans = [];
  String tipoSeleccionado = 'http';

  nuevoScan( String valor ) async {

    final nuevoScan = ScanModel(valor: valor);
    final id = await DBProvider.db.nuevoScanRaw(nuevoScan);
    // Asignar el ID de la base de datos al modelo
    nuevoScan.id = id;

    if ( tipoSeleccionado == nuevoScan.tipo ) {
    scans.add(nuevoScan);
    notifyListeners();
    }
  }

  cargarScans() async {
    final scans = await DBProvider.db.getAllScans();
    this.scans = [...?scans];
    notifyListeners();
  }
 
  cargarScanPorTipo( String tipo ) async {
    final scans = await DBProvider.db.getScansByType( tipo );
    this.scans = [...?scans];
    this.tipoSeleccionado = tipo;
    notifyListeners();
  }
 
  borrarTodos() async {
    await DBProvider.db.deleteScanAll();
    this.scans = [];
    notifyListeners();
  }

  borrarScanPorId( int id ) async {
    await DBProvider.db.deleteScan(id);
    this.cargarScanPorTipo(this.tipoSeleccionado);
  }
}