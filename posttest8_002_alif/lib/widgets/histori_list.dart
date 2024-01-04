import 'package:flutter/material.dart';
import 'package:posttest8_002_alif/model/histori_data.dart';
import 'package:posttest8_002_alif/widgets/histori_box.dart';
import 'package:provider/provider.dart';

class HistoriList extends StatelessWidget {
  const HistoriList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HistoriData>(
      builder: (context, historiData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final histori = historiData.histori[index];
            return HistoriBox(
              bookName: histori.bookName,
              kodeBooking: histori.kodeBooking,
              isChecked: histori.isDone,
              checkboxCallback: (checkboxState) {
                historiData.updateHistori(histori);
              },
              iconCallback: () {
                historiData.deleteHistori(histori);
              },
            );
          },
          itemCount: historiData.historiCount,
        );
      }
    );
  }
}