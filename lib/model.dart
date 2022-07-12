// ignore_for_file: unnecessary_getters_setters

class ResmiTatillerModel {
  bool? _success;
  String? _status;
  String? _pagecreatedate;
  List<Resmitatiller>? _resmitatiller;

  ResmiTatillerModel(
      {bool? success,
      String? status,
      String? pagecreatedate,
      List<Resmitatiller>? resmitatiller}) {
    if (success != null) {
      _success = success;
    }
    if (status != null) {
      _status = status;
    }
    if (pagecreatedate != null) {
      _pagecreatedate = pagecreatedate;
    }
    if (resmitatiller != null) {
      _resmitatiller = resmitatiller;
    }
  }

  bool? get success => _success;
  set success(bool? success) => _success = success;
  String? get status => _status;
  set status(String? status) => _status = status;
  String? get pagecreatedate => _pagecreatedate;
  set pagecreatedate(String? pagecreatedate) =>
      _pagecreatedate = pagecreatedate;
  List<Resmitatiller>? get resmitatiller => _resmitatiller;
  set resmitatiller(List<Resmitatiller>? resmitatiller) =>
      _resmitatiller = resmitatiller;

  ResmiTatillerModel.fromJson(Map<String, dynamic> json) {
    _success = json['success'];
    _status = json['status'];
    _pagecreatedate = json['pagecreatedate'];
    if (json['resmitatiller'] != null) {
      _resmitatiller = <Resmitatiller>[];
      json['resmitatiller'].forEach((v) {
        _resmitatiller!.add(Resmitatiller.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success'] = _success;
    data['status'] = _status;
    data['pagecreatedate'] = _pagecreatedate;
    if (_resmitatiller != null) {
      data['resmitatiller'] =
          _resmitatiller!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Resmitatiller {
  String? _gun;
  String? _en;
  String? _haftagunu;
  String? _tarih;
  String? _uzuntarih;

  Resmitatiller(
      {String? gun,
      String? en,
      String? haftagunu,
      String? tarih,
      String? uzuntarih}) {
    if (gun != null) {
      _gun = gun;
    }
    if (en != null) {
      _en = en;
    }
    if (haftagunu != null) {
      _haftagunu = haftagunu;
    }
    if (tarih != null) {
      _tarih = tarih;
    }
    if (uzuntarih != null) {
      _uzuntarih = uzuntarih;
    }
  }

  String? get gun => _gun;
  set gun(String? gun) => _gun = gun;
  String? get en => _en;
  set en(String? en) => _en = en;
  String? get haftagunu => _haftagunu;
  set haftagunu(String? haftagunu) => _haftagunu = haftagunu;
  String? get tarih => _tarih;
  set tarih(String? tarih) => _tarih = tarih;
  String? get uzuntarih => _uzuntarih;
  set uzuntarih(String? uzuntarih) => _uzuntarih = uzuntarih;

  Resmitatiller.fromJson(Map<String, dynamic> json) {
    _gun = json['gun'];
    _en = json['en'];
    _haftagunu = json['haftagunu'];
    _tarih = json['tarih'];
    _uzuntarih = json['uzuntarih'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['gun'] = _gun;
    data['en'] = _en;
    data['haftagunu'] = _haftagunu;
    data['tarih'] = _tarih;
    data['uzuntarih'] = _uzuntarih;
    return data;
  }
}