class Burc {
  String _burcAd;
  String _burcTarihi;
  String _burcDetayi;
  String _burcKucukResim;
  String _burcBuyukResim;

  Burc(this._burcAd, this._burcTarihi, this._burcDetayi, this._burcKucukResim,
      this._burcBuyukResim);

  String get burcBuyukResim => _burcBuyukResim;

  set burcBuyukResim(String value) {
    _burcBuyukResim = value;
  }

  String get burcKucukResim => _burcKucukResim;

  set burcKucukResim(String value) {
    _burcKucukResim = value;
  }

  String get burcDetayi => _burcDetayi;

  set burcDetayi(String value) {
    _burcDetayi = value;
  }

  String get burcTarihi => _burcTarihi;

  set burcTarihi(String value) {
    _burcTarihi = value;
  }

  String get burcAd => _burcAd;

  set burcAd(String value) {
    _burcAd = value;
  }
}
