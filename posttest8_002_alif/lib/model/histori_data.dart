import 'package:flutter/material.dart';
import 'dart:collection';
import 'package:posttest8_002_alif/model/histori.dart';

class HistoriData extends ChangeNotifier {
  
    final List<Histori> _histori = [
    ];

    void addHistori(String newHistori, String newKodeBooking) {
      final histori = Histori(bookName: newHistori, kodeBooking: newKodeBooking);
      _histori.add(histori);
      notifyListeners();
    }

    void updateHistori(Histori histori) {
      histori.toggleDone();
      notifyListeners();
    }

    void deleteHistori(Histori histori) {
      _histori.remove(histori);
      notifyListeners();
    }

    UnmodifiableListView<Histori> get histori {
      return UnmodifiableListView(_histori);
    }

    int get historiCount {
      return _histori.length;
    }
}