/**
 * ARITMATIK OPERATOR
 * 1. + : tambah
 * 2. - : kurang
 * 3. * : kali
 * 4. / : bagi
 * 5. ~/ : pembagian tapi dibulatkan jadi integer
 * 6. % : sisa bagi
 * 
 * => contoh:
 *    var a = 10;
 *    var b = 20;
 *    print(a + b); // 30
 * 
 * EQUALITY OPERATOR
 * 1. < : kurang dari
 * 2. > : lebih dari
 * 3. <= : kurang dari atau sama dengan
 * 4. >= : lebih dari atau sama dengan
 * 5. == : sama dengan
 * 6. != : tidak sama dengan
 * 
 * => contoh: 
 *    var a = 10;
 *    if (a == 10) {
 *      print("yes $a");
 *    }
 * 
 * ASSIGNMENT OPERATOR
 * 1. ??= : untuk mengecek apakah variable yang mau di re-assign masih null 
 *          atau sudah ada isinya
 * 
 * => contoh:
 *    int? num = 10;
 *    num ??= 20;
 *    print(num); 10, karna num tidak null
 * 
 * TYPE TEST OPERATOR
 * 1. is : mengecek sebuah object apakah sama dengan tipe tertentu
 * 2. is! : mengecek sebuah object apakah bukan tipe tertentu
 * 3. as : untuk memastikan bahwa object adalah tipe yang dimaksud
 * 
 * => contoh:
 *    var a = 10; contoh "is"
 *    if (a is int) {
 *      // eksekusi
 *    }
 * 
 *    var a = 10; contoh "is!"
 *    if (a is! String) {
 *      // eksekusi
 *    }
 * 
 *   Object data = "Hello Dart"; contoh "as"
 *   // Tanpa casting: data.length ❌ error (Object gak punya length)
 *  
 *   var panjang = (data as String).length;
 *   print(panjang); // Output: 11
 * 
 * CONDITIONAL OPERATOR
 * 1. kondisi ? exp1 : exp2 : untuk mengecek suatu variable ada isi nya atau tidak
 *    dan jika ada masuk ke exp1 jika tidak ke exp2
 *    contoh: var visibility = isPublic ? 'public' : 'private';
 * 
 * 2. exp1 ?? exp2 : untuk mengecek suatu variable ada isi nya atau tidak
 *    tetapi jika tidak ada langsung ke exp2 
 *    contoh: String playerName(String? name) => name ?? 'Guest';
 * 
 * SPREAD OPERATOR
 * 1. ... : untuk unpack collection 
 * 2. ...? : untuk unpack collection tapi bisa null agar tidak error
 */

void main() {
  // contoh chaining jika memakai this (di fungsi class nya harus return "this")
  var tukang = Tukang().catRumah("Arief").berbersih("sapu");
  tukang.getHome();

  var tukang2 = Tukang2()
    ..berbersih()
    ..catRumah();
  tukang2;

  Logger? logger; // Bisa null, misalnya tergantung konfigurasi debug
  
  logger?..log("Aplikasi dimulai"); // ✅ Hanya log kalau logger gak null
}

/**
 * fungsi cascade: memanggil banyak method atau mengatur banyak properti pada 
 * objek yang sama, tanpa harus menyimpan objek itu ke variabel setiap kali.
 * 
 */
// contoh bikin cascade notation
class Tukang {
  late String nameHome;
  late String jenisBebersih;
  // contoh jika "."
  Tukang catRumah(String name) {
    nameHome = name;
    return this;
  }

  Tukang berbersih(String jenis) {
    jenisBebersih = jenis;
    return this;
  }

  void getHome() {
    print("Name: $nameHome | Jenis: $jenisBebersih");
  }
}

class Tukang2 {
  // contoh jika ".."
  void catRumah() {
    print("cat rumah");
  }

  void berbersih() {
    print("bebersih");
  }
}

class Logger {
    void log(String message) {
      print("LOG: $message");
    }
  }
