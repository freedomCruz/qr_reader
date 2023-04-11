import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/pages/home_page.dart';
import 'package:qr_reader/pages/mapa_page.dart';
import 'package:qr_reader/providers/ui_provider.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: ( _ ) => new UiProvider() ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'QR Reader',
          initialRoute: 'home',
          routes: {
            'home':( _ ) => HomePage(),
            'mapa':( _ ) => MapaPage()
          },
    
          theme: ThemeData(
            colorScheme: 
            const ColorScheme.light(
              primary: Colors.deepPurple,
              secondary: Colors.deepPurple,
            ), 
            floatingActionButtonTheme: const FloatingActionButtonThemeData(foregroundColor: Colors.white),
            applyElevationOverlayColor:  true,
    
          )
      ),
    );
  }
}