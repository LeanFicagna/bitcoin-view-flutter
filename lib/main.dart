import 'package:bitcoin_view/my_app.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:bitcoin_view/repositories/favoritas_repository.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => FavoritasRepository(),
    child: MyApp(),
  ));
}
