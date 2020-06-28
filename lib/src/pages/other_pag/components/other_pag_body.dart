import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../app_bloc.dart';

class Body {
  Widget getBody(context) {
    AppBloc appBloc = BlocProvider.getBloc<AppBloc>();
    return Center(
      child: Column(
        children: <Widget>[
          Text('Outra pagina!!', style: TextStyle(fontSize: 20)),
          RaisedButton(
            onPressed: () {
              appBloc.backFromOtherPageToHome(context);
            },
            child: Text('Voltar'),
          )
        ],
      ),
    );
  }
}
