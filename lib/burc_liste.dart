import 'package:flutter/material.dart';
import 'package:flutter_burc_rehperi/models/burc.dart';
import 'package:flutter_burc_rehperi/utils/strings.dart';

class BurcListesi extends StatelessWidget {
  static List<Burc> tumBruclar;
  @override
  Widget build(BuildContext context) {
    tumBruclar = veriKaynaginiHazirla();
    return Scaffold(
      appBar: AppBar(
        title: Text("Burc Rehperi"),
      ),
      body: listeyiHazirla(),
    );
  }

  List<Burc> veriKaynaginiHazirla() {
    List<Burc> burclar = [];

    for (int i = 0; i < 12; i++) {
      String kucukResim =
          Strings.BURC_ADLARI[i].toLowerCase() + "${i + 1}.png"; //Koc->koc1.png
      String buyukResim = Strings.BURC_ADLARI[i].toLowerCase() +
          "_buyuk" +
          "${i + 1}.png"; //Koc->koc_buyuk1.png

      Burc eklenecekBurc = Burc(
          Strings.BURC_ADLARI[i],
          Strings.BURC_TARIHLERI[i],
          Strings.BURC_GENEL_OZELLIKLERI[i],
          kucukResim,
          buyukResim);
      burclar.add(eklenecekBurc);
    }

    return burclar;
  }

  Widget listeyiHazirla() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return tekSatirBurc(context, index);
      },
      itemCount: tumBruclar.length,
    );
  }

  Widget tekSatirBurc(BuildContext context, int index) {
    Burc oanListeyeEklenenBurc = tumBruclar[index];
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          onTap: () => Navigator.pushNamed(context, "/burcDetay/$index"),
          leading: Image.asset(
            "images/" + oanListeyeEklenenBurc.burcKucukResim,
            width: 64,
            height: 64,
          ),
          title: Text(
            oanListeyeEklenenBurc.burcAd,
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w400,
                color: Colors.pink.shade400),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              oanListeyeEklenenBurc.burcTarihi,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.black38,
              ),
            ),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: Colors.pink,
          ),
        ),
      ),
    );
  }
}
