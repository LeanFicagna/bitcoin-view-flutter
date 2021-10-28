import 'dart:collection';

import 'package:flutter/cupertino.dart';

import 'package:bitcoin_view/models/moeda.dart';

class FavoritasRepository extends ChangeNotifier {
  List<Moeda> _lista = [];

  UnmodifiableListView<Moeda> get list => UnmodifiableListView(_lista);

  saveAll(List<Moeda> moedas) {
    for (var moeda in moedas) {
      if (!_lista.contains(moeda)) _lista.add(moeda);
    }
    notifyListeners();
  }

  remove(Moeda moeda) {
    _lista.remove(moeda);
    notifyListeners();
  }
}
