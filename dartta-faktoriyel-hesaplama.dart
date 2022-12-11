import "dart:io"; //Kullanıcıdan veri almamızı sağlayacak kütüphane!

void main(List<String> args) {
  int? toplam = 1; 
  print("Faktöriyeli alınacak sayıyı giriniz:");
  int girilenSayi = int.parse(stdin.readLineSync()!);
  //Kullanıcıdan veriyi alıp int'e çevirdik
  toplam = faktoriyelAlma(girilenSayi); 
  //fonksiyonu çağırıp toplam değerine atadık
  girilenSayi = toplam;
  print("Sonuç: $girilenSayi");
  //toplam değişkenindeki değeri girilenSayi değerimize atayıp yazdırdık
}

int faktoriyelAlma(int girilenSayi) {
  int toplam = 1;
  //faktöriyel işlemimizi yapacak olan fonksiyonu yazıyoruz
  for (int i = 1; i <= girilenSayi; i++) {
    toplam *= i; //her değeri önceki değerle çarpacak
  }
  return toplam; //ve main methoduna döndürecek
}
