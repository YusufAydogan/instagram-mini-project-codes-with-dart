import "dart:io"; //Kullanıcıdan veri almamızı sağlayacak kütüphane!

void main(List<String> args) {
  print("Metin girin:");
  String? metin = stdin.readLineSync()!;
  //Kullanıcıdan veri aldığımız kısım burası
  //String? ile burasının bş olamayacağını söylüyoruz sisteme
  //Yinede null safety hatası alıyoruz 
  //Ama ! ile değişken kesin bir değer atanacağını bildiriyoruz.

  //Burada split ile boşluklar sayesinde kelimeleri ayırıp sayısını bulur.
  int kelimeSayisi = metin.split(" ").length;

  //Burada ise RegExp ile "nokta, soru işareti ve ünlem" sayesinde
  //Hem nokta ile biten cümlelerini
  // hemde ünlem ve soru cümlelerini yakalayabiliriyoruz.
  int cumleSayisi = metin.split(RegExp(r'[.!?]+')).length;

  print("Kelime sayısı: $kelimeSayisi");
  print("Cümle sayısı: ${cumleSayisi - 1}");
  //Cümle sayısından -1 çıkarmamızın sebebi uzun cümlelerde +1 fazla eklemesinden
}
