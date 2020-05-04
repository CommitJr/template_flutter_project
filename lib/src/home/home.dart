import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import '../app_bloc.dart';
import 'components/home_body.dart';

class Home extends StatelessWidget {
  Body _body = Body();

  Widget _appBar(multiply) {
    return AppBar(
      title: const Text('Flutter project'),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.blur_on),
          onPressed: () {
            //exemplo de acesso ao bloc por uma arvore diferente
            multiply(2);
          },
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    AppBloc appBloc = BlocProvider.getBloc<AppBloc>();
    return SafeArea(
      child: Scaffold(
        appBar: _appBar(appBloc.multiply),
        body: Center(child: _body.getBody(context)),
      ),
    );
  }
}
