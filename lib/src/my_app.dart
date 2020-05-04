import 'package:flutter/material.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'app_bloc.dart';
import 'package:template_flutter_project/src/shared/bloc/my_categories_bloc.dart';
import 'package:template_flutter_project/src/shared/bloc/template_bloc.dart';
import 'home/home.dart';
import 'other_pag/other_pag.dart';
import 'shared/repository/database/db_hive.dart';

class MyApp extends StatelessWidget {
  DbHive _dbHive;

  void initStatee() {
    print('init');
    _dbHive = DbHive();
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
          Bloc((_) => MyCategoriesBloc()),
          Bloc((_) => TemplateBolc()),
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
