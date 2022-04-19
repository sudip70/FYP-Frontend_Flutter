// ignore_for_file: non_constant_identifier_names

class Medcondition {
  Medcondition({
    required this.medconlist,
    required this.msg,
    required this.succes,
  });
  late final List<Medconlist> medconlist;
  late final String msg;
  late final String succes;

  Medcondition.fromJson(Map<String, dynamic> json) {
    medconlist = List.from(json['medconlist'])
        .map((e) => Medconlist.fromJson(e))
        .toList();
    msg = json['msg'];
    succes = json['succes'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['medconlist'] = medconlist.map((e) => e.toJson()).toList();
    _data['msg'] = msg;
    _data['succes'] = succes;
    return _data;
  }
}

class Medconlist {
  Medconlist({
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

  Medconlist.fromJson(Map<String, dynamic> json) {
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
