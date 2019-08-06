

import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      initialRoute: '/',
      routes: getApplicationRoutes(),
      localizationsDelegates: [        
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,        
      ],
      supportedLocales: [
        const Locale('en'), // English
        const Locale('es','ES'), // Hebrew                
      ],
      onGenerateRoute: (RouteSettings settings){
        return MaterialPageRoute(builder: (BuildContext context)=>AlertPage());
      },
    );
  }
}