import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../app_bloc.dart';

class Body {
  Widget getBody(context) {
    AppBloc appBloc = BlocProvider.getBloc<AppBloc>();
    return StreamBuilder(
        stream: appBloc.getCounterStream,
        builder: (BuildContext context, AsyncSnapshot snp) {
          if (snp.hasData) {
            return Column(children: <Widget>[
              Text(
                'You touch the botton ${appBloc.getCounterValue} times',
                style: TextStyle(fontSize: 30),
              ),
              RaisedButton(
                onPressed: appBloc.increment,
                child: const Icon(Icons.add),
                color: Colors.green,
              ),
              RaisedButton(
                onPressed: appBloc.decrement,
                child: const Icon(Icons.remove),
                color: Colors.red,
              ),
              Divider(),
              RaisedButton(
                onPressed: () => {Navigator.pushNamed(context, '/other')},
                child: Text('Ir par outra tela'),
                color: Colors.blue,
              ),
            ]);
          }
          if (snp.hasError) {
            return Text('Error!!');
          } else {
            return CircularProgressIndicator();
          }
        });
  }
}
