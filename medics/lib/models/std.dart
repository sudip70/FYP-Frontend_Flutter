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
    required this.cure,
    required this.description,
    required this.medId,
    required this.name,
    required this.symptoms,
  });
  late final String cure;
  late final String description;
  late final String medId;
  late final String name;
  late final String symptoms;

  Std.fromJson(Map<String, dynamic> json) {
    cure = json['cure'];
    description = json['description'];
    medId = json['med_id'];
    name = json['name'];
    symptoms = json['symptoms'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['cure'] = cure;
    _data['description'] = description;
    _data['med_id'] = medId;
    _data['name'] = name;
    _data['symptoms'] = symptoms;
    return _data;
  }
}
