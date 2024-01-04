// Class
class Fakultas {
  // Property
  String? nama;
  int? jumlahProdi;

  // List
  List<String>? programStudi;
  
  // Function without parameter
  void fakultas(){
    if (jumlahProdi == 0){
      print("Fakultas $nama Belum Ada Program Studi");
    }else{
      if (programStudi!.isNotEmpty){
        print("Fakultas $nama Memiliki Program Studi Berjumlah $jumlahProdi :");
        for (String prodi in programStudi!) {
          print("- $prodi");
        }
      }else{
        print("Fakultas $nama Memiliki Program Studi Berjumlah $jumlahProdi :");
        print("- Tidak Terdapat Nama Prodi"); 
      }
    }
  }

  // Function with paramater
  void tambahProgramStudi(String prodi, int jumlah){
    for (int i = 0; i < jumlah; i++){
      programStudi!.add(prodi);
    }

    jumlahProdi = (jumlahProdi ?? 0) + jumlah;
  }

  // Constructor
  Fakultas({
    required this.nama,
    required this.jumlahProdi,
    required this.programStudi,
  });
}

void main(){
  // Call Function without parameter
  Fakultas fklts = Fakultas(
    nama: "Teknik", 
    jumlahProdi: 2, 

    // List
    programStudi: ["Informatika", "Sistem Informasi"]
  );

  fklts.tambahProgramStudi("Elektro", 1);
  fklts.fakultas();
}