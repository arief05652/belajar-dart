void main() {
  var name = "hello";
  var age = 20;
  var height = 170;
  var listNumber = [1, 2, 3, 4, 5];
  var bio = {"hobby": "Belajar hal baru", "favorite_food": "Mie Goreng"};

  print(listNumber);

  var hewan = Hewan();
  print(hewan.getName(name: "Kucing"));
  print(hewan.getTime);

  // contoh const ini hanya bisa di isi sekali dan ga bisa diganti
  // const int umur = 10;  jika harus di isi tipe data
  const umur = 10;
}

class Hewan {
  // contoh implementasi late.
  // variable bisa di kosongkan tetapi tau kalau nantinya harus di isi
  late String nameAnimal;

  // contoh nullable variable.
  // jadi variable bisa kosong dan juga bisa diisi
  String? animalName;

  // contoh final
  // ini bisa ubah saat runtime tetapi hanya bisa di inisiasi sekali
  final date = DateTime.now(); // jika ga pake tipe date
  // final DateTime date = DateTime.now(); contoh jika di isi tipe datanya

  DateTime get getTime => date;

  String getName({required String name}) {
    nameAnimal = name;
    print(
      name.runtimeType,
    ); // untuk cek tipedata. atau menggunakan "is" untuk di compare
    return nameAnimal;
  }
}

/**
 * =========================================\
 * WILDCARDS VARIABLE
 * gunanya untuk sengaja tidak memakai nya 
 * 
 * > Kelebihan
 * - Menghindari warning: “unused variable”
 * - Membuat kode lebih bersih dan jelas
 * - Mengabaikan nilai yang tidak diperlukan
 */

void getName(_, _) {
  var namaewa = "Arief";

  // hanya mengambil looping nya bukan index nya
  for (var _ in [1, 2, 3]) {
    print("Looping...");
  }
}
