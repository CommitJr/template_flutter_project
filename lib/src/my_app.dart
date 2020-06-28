import 'package:flutter/material.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'app_bloc.dart';
import 'package:template_flutter_project/src/shared/bloc/_bloc.dart';
import 'pages/home/home.dart';
import 'pages/other_pag/other_pag.dart';

class MyApp extends StatelessWidget {
  void initStatee() {
    print('init');
  }

  @override
  Widget build(BuildContext context) {
    initStatee();
    return BlocProvider(
        // ----- blocs we need to use ---------------
        /**
         * blocs are used like a stores
         */
        blocs: [
          Bloc((_) => AppBloc()),
          Bloc((_) => BlocModel()),
        ],
        //-------------------------------------------

        child: MaterialApp(
          theme: ThemeData(primarySwatch: Colors.blue),

          debugShowCheckedModeBanner:
              false, // removed debug banner on top right

          initialRoute:
              '/', // When using initialRoute, don’t define a home property.

          title: 'Template flutter project',

          // ---------- defining routes ---------------
          routes: {
            '/': (context) => Home(),
            '/other': (context) => OtherPag(),
          },
          //--------------------------------------------
        ));
  }
}
