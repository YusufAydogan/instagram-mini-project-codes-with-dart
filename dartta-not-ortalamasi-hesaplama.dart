import "dart:io"; //Kullanıcıdan veri almamızı sağlayacak kütüphane!

void main(List<String> args) {
  while (true) {
    print("");
    print(">> Not Ortalama - Puan Hesaplama Motoruna Hoşgeldiniz <<");
    print("|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|");
    print("1.Vize notunu giriniz: ");
    num birinciVize = int.parse(stdin.readLineSync()!); 
    //Kullanıcıdan verileri aldık ve num'a dönüştürdük. Bunun değer alacağını belirtmek için bir ! işareti koyduk.
    print("2.Vize notunu giriniz:");
    num ikinciVize = int.parse(stdin.readLineSync()!); 
    print("Final notunu giriniz:");
    num finalNotu = int.parse(stdin.readLineSync()!);
    //Kullanıcıdan alınan verilerin hesaplaması yapılıyor.
    num sonuc = (birinciVize * 0.3) + (ikinciVize * 0.3) + (finalNotu * 0.4);

    //if içinde if kullanacağız. 
    //Puanların harflere göre sıralamasından önce doğru not girildiğini kontrol etmek gerek
    //Örneğin 0 ile 100 arasında notlar girilmeli. Bunlar dışında girilen değerler geçersiz sayılmalı.
    //Bundan sonra if elseler ile karşılaştırma şartları koyarak harf notu bulmaya çalışacağız.
    
    if ((0 <= birinciVize && birinciVize <= 100) &&
        (0 <= ikinciVize && ikinciVize <= 100) &&
        (0 <= finalNotu && finalNotu <= 100)) {
      if (90 <= sonuc && sonuc <= 100) {
        print("Notunuz: ${sonuc} (AA)");
      } else if (85 <= sonuc && sonuc <= 89) {
        print("Notunuz: ${sonuc} (BA)");
      } else if (80 <= sonuc && sonuc <= 84) {
        print("Notunuz: ${sonuc} (BB)");
      } else if (75 <= sonuc && sonuc <= 79) {
        print("Notunuz: ${sonuc} (CB)");
      } else if (70 <= sonuc && sonuc <= 74) {
        print("Notunuz: ${sonuc} (CC)");
      } else if (65 <= sonuc && sonuc <= 69) {
        print("Notunuz: ${sonuc} (DC)");
      } else if (60 <= sonuc && sonuc <= 64) {
        print("Notunuz: ${sonuc} (DD)");
      } else if (50 <= sonuc && sonuc <= 59) {
        print("Notunuz: ${sonuc} (FD)");
      } else if (50 > sonuc && sonuc >= 0) {
        print("Notunuz: ${sonuc} (FF) -- Başarısız");
      }
    } else {
      print("Geçersiz Not!!!"); 
      //Baştaki if parçasının else komutudur. 0 ile 100 dışında değer girilince aktif olur.
    }
  }
}
