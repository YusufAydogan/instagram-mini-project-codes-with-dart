import "dart:io"; //Kullanıcıdan veri almamızı sağlayacak kütüphane!

void main(List<String> args) {
  num? sayi1, sayi2, islem;

  ozellikler();
  print("\nYapmak istediğiniz işlemi seçiniz: ");
  islem = num.parse(stdin.readLineSync()!);

  while (islem != 5) {
    print("1.sayıyı giriniz: ");
    sayi1 = num.parse(stdin.readLineSync()!);

    print("2.Sayıyı giriniz: ");
    sayi2 = num.parse(stdin.readLineSync()!);

    print("-------------------------");
    switch (islem) {
      case 1:
        toplama(sayi1, sayi2);
        break;
      case 2:
        cikarma(sayi1, sayi2);
        break;
      case 3:
        carpma(sayi1, sayi2);
        break;
      case 4:
        bolme(sayi1, sayi2);
        break;
      case 5:
        break;
      default:
        print("Geçersiz işlem...");
        break;
    }

    print("-------------------------");
    ozellikler();
    print("Yapmak istediğiniz işlemi seçiniz: ");
    islem = num.parse(stdin.readLineSync()!);
  }
}

ozellikler() {
  print("1) Toplama");
  print("2) Çıkarma");
  print("3) Çarpma");
  print("4) Bölme");
  print("5) Çıkış");
}

toplama(num sayi1, num sayi2) {
  print("$sayi1 ve $sayi2 sayılarının toplamı:  ${sayi1 + sayi2}");
}

cikarma(num sayi1, num sayi2) {
  print("$sayi1 ve $sayi2 sayılarının farkı: ${sayi1 - sayi2}");
}

carpma(num sayi1, num sayi2) {
  print("$sayi1 ve $sayi2 sayılarının çarpımı: ${sayi1 * sayi2}");
}

bolme(num sayi1, num sayi2) {
  print("$sayi1 ve $sayi2 sayılarının bölümü ${sayi1 / sayi2}");
}
