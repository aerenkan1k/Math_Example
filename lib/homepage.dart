import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var tfSayi1 = TextEditingController();
  var tfSayi2 = TextEditingController();
  int sonuc = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bloc Kullanımı"),),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 50,right: 50),
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(sonuc.toString(),style: const TextStyle(fontSize: 30),),
              TextField(controller: tfSayi1,decoration: const InputDecoration(hintText: "Sayı 1"),),
              TextField(controller: tfSayi2,decoration: const InputDecoration(hintText: "Sayı 2"),),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
                    String alinanSayi1 = tfSayi1.text;
                    String alinanSayi2 = tfSayi2.text;
                    int sayi1 = int.parse(alinanSayi1);
                    int sayi2 = int.parse(alinanSayi2);
                    int toplam = sayi1 + sayi2;
                    setState(() {
                      sonuc = toplam;
                    });
                  }, child: const Text("TOPLAMA")),
                  ElevatedButton(onPressed: (){
                    String alinanSayi1 = tfSayi1.text;
                    String alinanSayi2 = tfSayi2.text;
                    int sayi1 = int.parse(alinanSayi1);
                    int sayi2 = int.parse(alinanSayi2);
                    int carpma = sayi1 * sayi2;
                    setState(() {
                      sonuc = carpma;
                    });
                  }, child: const Text("ÇARPMA"))
                  
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
