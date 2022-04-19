class StdInfo {
  StdInfo({
    required this.msg,
    required this.std,
    required this.succes,
  });
  late final String msg;
  late final List<Std> std;
  late final String succes;

  StdInfo.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
    std = List.from(json['std']).map((e) => Std.fromJson(e)).toList();
    succes = json['succes'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['msg'] = msg;
    _data['std'] = std.map((e) => e.toJson()).toList();
    _data['succes'] = succes;
    return _data;
  }
}

class Std {
  Std({
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

  Std.fromJson(Map<String, dynamic> json) {
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
