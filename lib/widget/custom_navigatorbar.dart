import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/providers/ui_provider.dart';

// ignore: use_key_in_widget_constructors
class CustomNavigatorBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final uiProvider = Provider.of<UiProvider>(context);
    
    final currentIndex = uiProvider.selectedMenuOpt;

    return BottomNavigationBar(
      onTap: (int i) => uiProvider.selectedMenuOpt = i,
      currentIndex: currentIndex,
      elevation: 10.0,
      items:const [
        //-----Debe tener como mínimo dos Items para que no arroje error
        BottomNavigationBarItem(
          icon: Icon(Icons.map),
          label: 'Mapa'
          ),
        BottomNavigationBarItem(
          icon: Icon(Icons.compass_calibration),
          label: 'Direcciones'
          ),
      ],
       
    );
  }
}