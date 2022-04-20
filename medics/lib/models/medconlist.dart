class Medcondition {
  Medcondition({
    required this.medCondition,
    required this.msg,
    required this.succes,
  });
  late final List<MedCondition> medCondition;
  late final String msg;
  late final String succes;

  Medcondition.fromJson(Map<String, dynamic> json) {
    medCondition = List.from(json['med_condition'])
        .map((e) => MedCondition.fromJson(e))
        .toList();
    msg = json['msg'];
    succes = json['succes'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['med_condition'] = medCondition.map((e) => e.toJson()).toList();
    _data['msg'] = msg;
    _data['succes'] = succes;
    return _data;
  }
}

class MedCondition {
  MedCondition({
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

  MedCondition.fromJson(Map<String, dynamic> json) {
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
