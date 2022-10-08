import "dart:io"; //Kullanıcıdan veri almamızı sağlayacak kütüphane!

void main(List<String> args) {
  print("Boyunuzu giriniz (örn: 1.83): ");
  double boy = double.parse(stdin.readLineSync()!);
  //kullanıcıdan veriyi alıp double'a çevirdik. Değişken boş olamaz dediği için 
  //bunun sonradan değer alacağını belirten bir ünlem işaretini koyduk.
  print("Kilonuzu giriniz (örn: 62.0): ");
  double kilo = double.parse(stdin.readLineSync()!);

  num endeks = kilo / (boy * boy);
  //Hesaplama yapılırken kilonuz boyunuzun karesine bölünür.

  if (endeks <= 18.49) {
    print("Sonuç: ${endeks} (zayıf)");
  } else if (endeks > 18.49 && endeks < 25) {
    print("Sonuç: ${endeks} (normal)");
  } else if (endeks >= 25) {
    print("Sonuç: ${endeks} (obez)");
  }
}




/*
Çıktılar:
Boyunuzu giriniz (örn: 1.83): 
1.83
Kilonuzu giriniz (örn: 62.0): 
62
Sonuç: 18.513541759980885 (normal)
*/
