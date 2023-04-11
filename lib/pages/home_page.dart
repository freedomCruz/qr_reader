import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:qr_reader/widget/custom_navigatorbar.dart';
import 'package:qr_reader/widget/scan_buttom.dart';

import 'package:qr_reader/pages/drecciones_page.dart';
import 'package:qr_reader/pages/mapas_page.dart';

import 'package:qr_reader/providers/ui_provider.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Historial')
        ),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: const Icon(Icons.delete_forever)
          )
        ]
      ),
      body: _HomePageBody(),
    
      bottomNavigationBar: CustomNavigatorBar(),
    
      floatingActionButton: ScanButtom(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _HomePageBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    // Obtener el selected menu opt
    final uiProvider = Provider.of<UiProvider>(context);

    //Cambiar para mostrar la página respectiva.
    final currentIndex = uiProvider.selectedMenuOpt;

    switch (currentIndex) {
      case 0:
        return const MapasPage();
      
      case 1:
        return const DireccionesPage();

      default:
        return const MapasPage();
    }
  }
}