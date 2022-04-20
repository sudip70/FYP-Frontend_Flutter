class BloodReqInfo {
  BloodReqInfo({
    required this.bloodreq,
    required this.msg,
    required this.succes,
  });
  late final List<Bloodreq> bloodreq;
  late final String msg;
  late final String succes;

  BloodReqInfo.fromJson(Map<String, dynamic> json) {
    bloodreq =
        List.from(json['bloodreq']).map((e) => Bloodreq.fromJson(e)).toList();
    msg = json['msg'];
    succes = json['succes'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['bloodreq'] = bloodreq.map((e) => e.toJson()).toList();
    _data['msg'] = msg;
    _data['succes'] = succes;
    return _data;
  }
}

class Bloodreq {
  Bloodreq({
    required this.Blood_Group,
    required this.Location,
    required this.Name,
    required this.Phone,
    required this.bloodId,
  });
  late final String Blood_Group;
  late final String Location;
  late final String Name;
  late final String Phone;
  late final int bloodId;

  Bloodreq.fromJson(Map<String, dynamic> json) {
    Blood_Group = json['Blood_Group'];
    Location = json['Location'];
    Name = json['Name'];
    Phone = json['Phone'];
    bloodId = json['blood_id'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['Blood_Group'] = Blood_Group;
    _data['Location'] = Location;
    _data['Name'] = Name;
    _data['Phone'] = Phone;
    _data['blood_id'] = bloodId;
    return _data;
  }
}
