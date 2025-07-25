/**
 * NUMBER
 * 1. int : angka tapi bilangan bulat
 * 2. double : angka tapi desimal
 * 3. num : angka tapi desimal tapi bisa juga bulat
 * 
 * RUNE
 * - untuk mengakses karakter unicode untuk emoji, simbol dan akses
 * => contoh:
 *    var emo = "😘";
 *    print(emo.runes.string);
 * 
 * ANONYMOUS FUNCTION 
 * - untuk handle callback & hanya dijalankan 1 kali
 * 
 * COLLECTIONS
 * - list : [dynamic] bisa duplikat tetapi lebih lambat
 * - set : {dynamic} tidak bisa duplikat tetapi cepat
 * - map : {"": dynamic} key->value carinya lewat key
 */

void main() {
  var angka = 12;
  // "${} / $exp" : string interpolation
  var s4 = "It's even easier $angka to use the other delimiter.";
  print(s4);

  // contoh pemakaian runes
  var emo = "😘";
  print(emo.runes.string);

  // contoh pemakaian function types
  void greet(String name, {String greeting = 'Hello'}) =>
      print('$greeting $name!');

  greet("arief");

  void Function(String, {String greeting}) g = greet;
  g('Dash', greeting: 'Howdy');

  // contoh anonymous function
  var a = ({required String name}) => print("nama: $name");
  a(name: "arief");

  List keranjang = <String>["Buah", "Ikan", "Minum"];
  print(keranjang.length); // ambil panjang isi list
  print((keranjang[1])); // ambil isi dari index ke 1

  Set listBackpack = <String>{"Obat", "Uang", "Tongkat"};
  print(listBackpack.contains("Obat"));
}