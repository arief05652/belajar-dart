/**
 * final class: mencegah class di warisi oleh class lain
 */
final class Hewan {
  void getHewan() => print("Bebek");
}

/**
 * sealed class: hanya bisa di warisi oleh class yang berada di file yang sama
 */
sealed class Animal {}

class Cat extends Animal {}

/**
 * base class: hanya bisa di warisi oleh class secara eksplisit
 */
base class Vehicle {}

final class Motor extends Vehicle {}

base class Mobil extends Vehicle {}

/**
 * interface class: tidak bisa di warisi kecuali dengan implements
 */
interface class Kucing {
  void suara() => print("miaww");
}

class Hewan2 implements Kucing {
  @override
  void suara() {
    //
  }
}

/**
 * mixin: hanya bisa di warisi dengan with
 * mixin class: bisa di warisi dengan apapun
 */

mixin class Ayam {
  void suara() => print('kururuyuk');
}

class Hewan3 implements Ayam {
  @override
  void suara() {
    // TODO: implement suara
  }
}

/**
 * abstract class: membuat class harus di warisi dulu tidak bisa langsung
 */
abstract class Anjing {
  void suara();
}

class Hewan4 extends Anjing {
  @override
  void suara() {
    // TODO: implement suara
  }
}