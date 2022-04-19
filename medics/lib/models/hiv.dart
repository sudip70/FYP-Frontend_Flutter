class HivInfo {
  HivInfo({
    required this.hiv,
    required this.msg,
    required this.succes,
  });
  late final List<Hiv> hiv;
  late final String msg;
  late final String succes;

  HivInfo.fromJson(Map<String, dynamic> json) {
    hiv = List.from(json['hiv']).map((e) => Hiv.fromJson(e)).toList();
    msg = json['msg'];
    succes = json['succes'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['hiv'] = hiv.map((e) => e.toJson()).toList();
    _data['msg'] = msg;
    _data['succes'] = succes;
    return _data;
  }
}

class Hiv {
  Hiv({
    required this.Cure,
    required this.Description,
    required this.Name,
    required this.Symptoms,
    required this.medId,
  });
  late final String Cure;
  late final String Description;
  late final String Name;
  late final String Symptoms;
  late final String medId;

  Hiv.fromJson(Map<String, dynamic> json) {
    Cure = json['Cure'];
    Description = json['Description'];
    Name = json['Name'];
    Symptoms = json['Symptoms'];
    medId = json['med_id'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['Cure'] = Cure;
    _data['Description'] = Description;
    _data['Name'] = Name;
    _data['Symptoms'] = Symptoms;
    _data['med_id'] = medId;
    return _data;
  }
}
