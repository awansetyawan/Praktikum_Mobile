class Histori {
  final String bookName;
  final String kodeBooking;
  bool isDone;

  Histori({required this.bookName, required this.kodeBooking, this.isDone = false});

  void toggleDone() {
    isDone = !isDone;
  }
}