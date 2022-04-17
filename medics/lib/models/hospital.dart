class HospitalDetails {
  HospitalDetails({
    required this.hospitals,
  });
  late final Hospitals hospitals;

  HospitalDetails.fromJson(Map<String, dynamic> json) {
    hospitals = Hospitals.fromJson(json['hospitals']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['hospitals'] = hospitals.toJson();
    return _data;
  }
}

class Hospitals {
  Hospitals({
    required this.hospitals,
    required this.msg,
    required this.succes,
  });
  late final List<Hospitals> hospitals;
  late final String msg;
  late final String succes;

  Hospitals.fromJson(Map<String, dynamic> json) {
    hospitals =
        List.from(json['hospitals']).map((e) => Hospitals.fromJson(e)).toList();
    msg = json['msg'];
    succes = json['succes'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['hospitals'] = hospitals.map((e) => e.toJson()).toList();
    _data['msg'] = msg;
    _data['succes'] = succes;
    return _data;
  }
}
