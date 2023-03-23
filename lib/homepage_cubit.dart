import 'package:flutter_bloc/flutter_bloc.dart';

class HomepageCubit extends Cubit<int>{
  HomepageCubit(): super(0);

  void toplamaYap(String alinanSayi1,String alinanSayi2){
    int sayi1 = int.parse(alinanSayi1);
    int sayi2 = int.parse(alinanSayi2);
    int toplam = sayi1 + sayi2;
    emit(toplam);
  }
  void carpmaYap(String alinanSayi1,String alinanSayi2){
    int sayi1 = int.parse(alinanSayi1);
    int sayi2 = int.parse(alinanSayi2);
    int carpma = sayi1 * sayi2;
    emit(carpma);
  }
  void bolmeYap(String alinanSayi1,String alinanSayi2){
    int sayi1 = int.parse(alinanSayi1);
    int sayi2 = int.parse(alinanSayi2);
    int bolme = sayi1 % sayi2;
    emit(bolme);
  }
  void cikarmaYap(String alinanSayi1,String alinanSayi2){
    int sayi1 = int.parse(alinanSayi1);
    int sayi2 = int.parse(alinanSayi2);
    int cikarma = sayi1 - sayi2;
    emit(cikarma);
  }
}