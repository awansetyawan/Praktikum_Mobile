import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HistoriBox extends StatefulWidget {
  final bool isChecked;
  final String bookName;
  final String kodeBooking;
  final void Function(bool?)? checkboxCallback;
  final VoidCallback? iconCallback;

  const HistoriBox({
    Key? key,
    required this.isChecked,
    required this.bookName,
    required this.kodeBooking,
    this.checkboxCallback,
    this.iconCallback,
  }) : super(key: key);

  @override
  HistoriBoxState createState() => HistoriBoxState();
}

class HistoriBoxState extends State<HistoriBox> {
  bool deletionConfirmed = false; // Status apakah mengonfirmasi penghapusan

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.bookName,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontSize: 15,
              decoration: widget.isChecked || deletionConfirmed
                  ? TextDecoration.lineThrough : null,
            ),
          ),
          Text(
            'Kode : ${widget.kodeBooking}',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: const Color(0xFFFFA559),
              fontSize: 15,
            ),
          ),
        ],
      ),
      trailing: deletionConfirmed
        ? IconButton(
            icon: const Icon(Icons.delete),
            color: Colors.white,
            onPressed: () {
              _showAlertDialog(context);
            },
          )
        : Checkbox(
            activeColor: const Color(0xFFFF6000),
            value: widget.isChecked,
            onChanged: (newValue) {
              if (!deletionConfirmed) {
                setState(() {
                  deletionConfirmed = true;
                });
              } else {
                if (widget.checkboxCallback != null) {
                  widget.checkboxCallback!(newValue);
                }
              }
            },
            side: const BorderSide(
              color: Color(0xFFFF6000), // Warna garis kotak checkbox
              width: 2.0, // Lebar garis kotak checkbox
            ),
          ),
    );
  }

  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: const Text('Alert'),
          content: const Text('Data Will Be Deleted'),
          actions: <CupertinoDialogAction>[
            CupertinoDialogAction(
              isDestructiveAction: false,
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'No',
                style: TextStyle(color: Colors.green),
              ),
            ),
            CupertinoDialogAction(
              isDestructiveAction: true,
              onPressed: () {
                if (widget.iconCallback != null) {
                  widget.iconCallback!(); // Memanggil iconCallback untuk menghapus item histori
                }
                Navigator.pop(context);
              },
              child: const Text('Yes'),
            ),
          ],
        );
      },
    );
  }
}
