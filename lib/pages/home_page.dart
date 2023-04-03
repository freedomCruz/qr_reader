import 'package:flutter/material.dart';
import 'package:qr_reader/widget/bottom_navigatorbar.dart';
import 'package:qr_reader/widget/scan_buttom.dart';

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
      body: const Center(
        child: Text('Home page')
      ),
    
      bottomNavigationBar: CustomNavigatorBar(),
    
      floatingActionButton: ScanButtom(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}