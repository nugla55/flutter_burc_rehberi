import 'package:flutter/material.dart';
import 'package:flutter_burc_rehperi/burc_liste.dart';
import 'package:flutter_burc_rehperi/models/burc.dart';

class BurcDetay extends StatelessWidget {
  int gelenIndex;
  Burc secilenBurc;
  BurcDetay(this.gelenIndex);
  @override
  Widget build(BuildContext context) {
    secilenBurc = BurcListesi.tumBruclar[gelenIndex];

    return Scaffold(
      primary: true,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "images/" + secilenBurc.burcBuyukResim,
                fit: BoxFit.cover,
              ),
              centerTitle: true,
              title: Text(secilenBurc.burcAd + " Burcu ve Özellikleri"),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.pink.shade50,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: SingleChildScrollView(
                child: Text(secilenBurc.burcDetayi,
                    style: TextStyle(fontSize: 18, color: Colors.black)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
