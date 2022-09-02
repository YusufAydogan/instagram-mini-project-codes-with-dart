import "dart:io"; // Kullanıcıdan veri almamızı sağlayacak kütüphane

void main(List<String> args) {
  //Soru işareti ve ünlem ile  bu değişkenin null değer olmayacağını belirtiriz ki hata verip kızmasın
  print("Üçgenin birinci kenarını giriniz: ");
  num? birinciKenar = int.parse(stdin.readLineSync()!); //kullanıcıdan veri alıp integer'a çevirdik.
 
  print("Üçgenin ikinci kenarını giriniz: ");
  num? ikinciKenar = int.parse(stdin.readLineSync()!); //kullanıcıdan veri alıp integer'a çevirdik.
  
  print("Üçgenin üçüncü kenarını giriniz: ");
  num? ucuncuKenar = int.parse(stdin.readLineSync()!); //kullanıcıdan veri alıp integer'a çevirdik.
  
  //Burası karışık gelebilir if içinde if kullanıyoruz. 
  if (birinciKenar + ikinciKenar > ucuncuKenar &&
      birinciKenar + ucuncuKenar > ikinciKenar &&
      ikinciKenar + ucuncuKenar > birinciKenar) {
    if (birinciKenar != ikinciKenar &&
        ikinciKenar != ucuncuKenar &&
        birinciKenar != ucuncuKenar) {
      print("Bu bir çeşitkenar üçgen");
    } else if (birinciKenar == ikinciKenar &&
        ikinciKenar == ucuncuKenar &&
        birinciKenar == ucuncuKenar) {
      print("Bu bir eşitkenar üçgen");
    } else if (birinciKenar == ikinciKenar ||
        ikinciKenar == ucuncuKenar ||
        ucuncuKenar == birinciKenar) {
      print("Bu bir ikizkenar üçgen");
    } else {
      print("Tanımlanmamış üçgen");
    }
  } else {
    print("Üçgen oluşturulamadı");
  }
}
