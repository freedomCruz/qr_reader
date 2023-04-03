import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class CustomNavigatorBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
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