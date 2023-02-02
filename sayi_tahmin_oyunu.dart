import "dart:io"; //Kullanıcıdan veri almamızı sağlayacak kütüphane!
import 'dart:math'; //Random sayı üretmek için kullanacağımız kütüphane!

void main(List<String> args) {
  var rng = Random(); //Random sayımızı üretiyoruz.
  var randomNumber = rng.nextInt(100) + 1;
  //Aralığını belirleyip bir "randomNumber" değişkenine atadık
  var tahmin;

  print("1 ile 100 arasında bir sayı tahmin edin:");
  while (tahmin != randomNumber) {
    tahmin = int.parse(stdin.readLineSync()!);
    //Kullanıcıdan veri alıp kontrol etmek için integer'a çevirdik.
    if (tahmin < randomNumber) {
      print("Yukarı!");
    } else if (tahmin > randomNumber) {
      print("Aşağı!");
    }
    //if else'ler ile sayıyı kontrol edip kullanıcıya yönergeler verdik.
  }

  print("Tebrikler! Doğru tahmin ettiniz!");
}
