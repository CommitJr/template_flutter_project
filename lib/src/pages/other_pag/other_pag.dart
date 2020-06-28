import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/other_pag_body.dart';

class OtherPag extends StatelessWidget {
  final Body _body = Body();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(title: const Text('Outra Página')),
      body: _body.getBody(context),
    ));
  }
}
