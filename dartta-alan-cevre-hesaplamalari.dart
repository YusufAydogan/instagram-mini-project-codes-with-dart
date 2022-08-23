import "dart:io"; //! Kullanıcıdan veri almamızı sağlayacak kütüphane

void main(List<String> args) {
  print("pi değeri giriniz: ");
  double? piDegeri =
      double.parse(stdin.readLineSync()!); //kullanıcıdan veri aldık
  print("yarıçapı giriniz: ");
  int? yaricap = int.parse(stdin.readLineSync()!);

  //Dairenin alanını hesaplayalım
  //Bilgi: Dairenin alanı = pi * yarıçapın karesi
  double daireAlan = piDegeri * (yaricap * yaricap);
  print("Dairenin alanı = $daireAlan");

  //Dairenin çevresini hesaplayalım
  //Bilgi: Dairenin çevresi = 2 * pi * yarıçapı
  double daireCevre = 2 * piDegeri * yaricap;
  print("Dairenin çevresi = $daireCevre");
  
  //-------------------------------------------------------------------

  //Dikdörtgenin alanını hesaplayalım
  //Bilgi: Dikdörtgenin alanı = uzun kenar * kısa kenar
  print("Uzun kenarı giriniz: ");
  int uzunKenar = int.parse(stdin.readLineSync()!); //kullanıcıdan veri aldık
  print("Kısa kenarı giriniz: ");
  int kisaKenar = int.parse(stdin.readLineSync()!);

  int dikdortgenAlan = uzunKenar * kisaKenar;
  print("Dikdörtgenin alanı = $dikdortgenAlan");

  //Dikdörtgenin çevresini hesaplayalım
  //Bilgi: Dikdörtgenin çevresi = 2 * (uzun kenar + kısa kenar)
  int dikdortgenCevre = 2 * (uzunKenar + kisaKenar);
  print("Dikdörtgenin çevresi = $dikdortgenCevre");
  
  //-------------------------------------------------------------------

  //Üçgenin alanını hesaplayalım
  //Bilgi: Üçgenin alanı = 0.5 * taban * yükseklik
  print("Üçgenin taban uzunluğunu giriniz :");
  num taban = int.parse(stdin.readLineSync()!); //kullanıcıdan veri aldık
  print("Üçgenin yüksekliğini giriniz :");
  num yukseklik = int.parse(stdin.readLineSync()!);
  num ucgenAlan = 0.5 * taban * yukseklik;
  print("Üçgenin alanı = $ucgenAlan");
  
}
