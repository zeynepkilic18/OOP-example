class Insan {
  String ad;
  String soyad;

  Insan(this.ad, this.soyad); //Constructor(yapıcı metod)

  void ekle(String bilgi) {
    print('$ad $soyad: $bilgi eklendi.');
  }
}

class Hoca extends Insan {
  Hoca(String ad, String soyad) : super(ad, soyad); //Inheritance(Kalıtım)

  void dersCalis() {
    print('$ad $soyad ders anlatmak için ders çalışıyor');
  }

  void sinavYap() {
    print('$ad $soyad sınav yapıyor.');
  }

  @override
  void ekle(String bilgi) {
    print('$ad $soyad: Danışman olduğu öğrencinin dersini onayla: $bilgi');
  }
}

class Ogrenci extends Insan {
  Ogrenci(String ad, String soyad) : super(ad, soyad);

  void dersCalis() {
    print('$ad $soyad ders çalışıyor');
  }

  void sinav01() {
    print('$ad $soyad sınav oluyor');
  }

  @override
  void ekle(String bilgi) {
    print('$ad $soyad:Yeni ders eklendi: $bilgi');
  }
}

class Sekreter extends Insan {
  Sekreter(String ad, String soyad) : super(ad, soyad); //Inheritance(Kalıtım)

  void dersEkle(Hoca hoca, String ders) {
    print('$ad $soyad: $ders hocaya eklendi');
  }

  void ogrenciEkle(Ogrenci ogrenci) {
    print('$ad $soyad: ${ogrenci.ad} ${ogrenci.soyad} öğrenci eklendi.');
  }

  @override //Polimorfizm(Polymorphism)
  void ekle(String bilgi) {
    print('$ad $soyad: $bilgi');
  }
}

void main() {
  //Hoca nesnesinin oluşturulması
  Hoca hoca1 = Hoca('Sinan', 'Başarslan');
  hoca1.dersCalis();
  hoca1.sinavYap();
  hoca1.ekle('Mobil dersi');

  //Öğrenci nesnesinin oluşturulması
  Ogrenci ogrenci1 = Ogrenci('Zeynep', 'Kılıç');
  ogrenci1.dersCalis();
  ogrenci1.sinav01();
  ogrenci1.ekle('Mobil dersi');

  //Sekreter nesnesinin oluşturulması
  Sekreter sekreter1 = Sekreter('Ahmet', 'Kaya');
  sekreter1.dersEkle(hoca1, 'Mobil dersi');
  sekreter1.ogrenciEkle(ogrenci1);
  sekreter1.ekle('Yeni ders ekle');
}
