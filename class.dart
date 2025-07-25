void main() {
  var motor = Kendaraan(cc: 120, merk: "Honda", age: 2005);
  motor.getData;
}

class Motor {
  String? merk; // property yang boleh null
  num age; // property yang harus di isi

  /**
   * Motor(this.merk, this.age); <= contoh positional constructor
   * Motor({this.merk, this.age}); <= named constructor
   * Motor({required this.merk, required this.age}); <= `required` dipakai jika \
   * properti di class yang harus di isi tidak boleh null
   */
  Motor({this.merk, required this.age});

  /** 
   * ini get property yang hanya membalikan sesuatu 'void' disana karna mengembalikan print
   * Contoh yang return:
   * String get getData => "Merk $merk, Age $age";
   * 
   * "=>" ini adalah arrow function, fungsi nya untuk menyederhanakan fungsi biasa
   * yang memakai "{}"
   */
  void get getData => print("Merk $merk, Age $age");
}

/**
 * Pewarisan:
 * - [extends]: hanya bisa 1 parent class
 * - [mixin (with)]: bisa memakai banyak mixin dan class yang memakainya bisa memakai 
 *    method atau property
 * - [implements]: ketika ingin memakai abstract class & wajib memakai propetry dan 
 *    juga method dari class yang di implements nya
 */

// contoh membuat mixin class
mixin Roda {
  int getRoda() => 2;
}

abstract class Suara {
  void suara();
}

// contoh pemakaian
class Kendaraan extends Motor with Roda implements Suara {
  int cc;

  Kendaraan({required this.cc, required super.merk, required super.age});

  @override
  int getRoda() {
    return super.getRoda();
  }

  // pemakaian implements
  @override
  void suara() {
    print("brum brum");
  }
}
